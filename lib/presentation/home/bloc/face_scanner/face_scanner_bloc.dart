import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
import 'package:image/image.dart' as img;
import 'package:presensi_app/data/datasource/face_remote_datasource.dart';

import '../../services/Recognition.dart';
import '../../services/Recognizer.dart';

part 'face_scanner_event.dart';
part 'face_scanner_state.dart';
part 'face_scanner_bloc.freezed.dart';

class FaceScannerBloc extends Bloc<FaceScannerEvent, FaceScannerState> {
  final FaceRemoteDatasource faceRemoteDatasource;
  Recognizer recognizer = Recognizer();

  FaceScannerBloc({required this.faceRemoteDatasource}) : super(_Initial()) {
    // final ImagePicker _imagePicker = ImagePicker();
    File? _image;
    late FaceDetector faceDetector;
    late CameraController controller;
    var image;
    List<Recognition> recognitions = [];
    List<Face> faces = [];

    Future<void> _onInitializeCamera() async {
      try {
        // final cameras = await availableCameras();
        final CameraDescription camera = CameraDescription(
            lensDirection: CameraLensDirection.front,
            name: 'front',
            sensorOrientation: 0);
        controller = CameraController(camera, ResolutionPreset.high);
        await controller.initialize();
      } catch (e) {
        print('Error in initializing camera: $e');
      }
    }

    removeRotation(File inputImage) async {
      final img.Image? capturedImage =
          img.decodeImage(await File(inputImage.path).readAsBytes());
      final img.Image orientedImage = img.bakeOrientation(capturedImage!);
      return await File(_image!.path)
          .writeAsBytes(img.encodeJpg(orientedImage));
    }

    doFaceDetection() async {
      final options = FaceDetectorOptions();
      faceDetector = FaceDetector(options: options);
      recognitions.clear();
      //TODO implement face detection
      _image = await removeRotation(_image!);
      image = await _image!.readAsBytes();
      image = await decodeImageFromList(image);

      //TODO passing input to face detector and getting detected faces
      InputImage inputImage = InputImage.fromFile(_image!);
      faces = await faceDetector.processImage(inputImage);

      for (Face face in faces) {
        Rect faceRect = face.boundingBox;
        num left = faceRect.left < 0 ? 0 : faceRect.left;
        num top = faceRect.top < 0 ? 0 : faceRect.top;
        num right =
            faceRect.right > image.width ? image.width - 1 : faceRect.right;
        num bottom =
            faceRect.bottom > image.height ? image.height - 1 : faceRect.bottom;
        num width = right - left;
        num height = bottom - top;

        // TODO cropping face from image
        final bytes = _image!.readAsBytesSync();
        img.Image? faceImg = img.decodeImage(bytes);
        img.Image croppedFace = img.copyCrop(faceImg!,
            x: left.toInt(),
            y: top.toInt(),
            width: width.toInt(),
            height: height.toInt());

        Recognition recognition = recognizer.recognize(croppedFace, faceRect);
        return recognition;
        // recognitions.add(recognition);
      }
      // drawRectangleAroundFaces();
    }

    Future<List<Face>> _processCameraImage(CameraImage image) async {
      final options = FaceDetectorOptions();
      faceDetector = FaceDetector(options: options);
      final WriteBuffer writeBuffer = WriteBuffer();
      for (Plane plane in image.planes) {
        writeBuffer.putUint8List(plane.bytes);
      }
      final bytes = writeBuffer.done().buffer.asUint8List();
      final inputImage = InputImage.fromBytes(
        bytes: bytes,
        metadata: InputImageMetadata(
          rotation: InputImageRotation.rotation0deg,
          bytesPerRow: image.planes.first.bytesPerRow,
          format: InputImageFormat.nv21,
          size: Size(image.width.toDouble(), image.height.toDouble()),
        ),
      );

      final faces = await faceDetector.processImage(inputImage);
      return faces;
    }

    on<_LoadCamera>((event, emit) async {
      try {
        await _onInitializeCamera();
        if (controller.value.isInitialized) {
          emit(FaceScannerState.cameraReady(controller));

          controller.startImageStream((CameraImage image) async {
            try {
              final faces = await _processCameraImage(image);
              if (faces.isNotEmpty) {
                // Stop the camera stream
                await controller.stopImageStream();

                // print('Wajah terdeteksi');
                XFile wajah = await controller.takePicture();
                _image = File(wajah.path);

                // Trigger the event to notify Bloc
                add(FaceScannerEvent.faceDetected(_image!));
              }
            } catch (e) {
              print('Error in face detection: $e');
            }
          });
        }
      } catch (e) {
        emit(FaceScannerState.error(e.toString()));
      }
    });

    on<_FaceDetected>((event, emit) async {
      try {
        _image = await removeRotation(event.imageFile);
        Recognition? _recognition = await doFaceDetection();

        final registeredFaces = await faceRemoteDatasource.isFaceData();

        // mendaftarkan wajah jika belum terdaftar
        if (!registeredFaces) {
          final registerFace = await faceRemoteDatasource.registerFaceData(
              _recognition!.embeddings, _image!.readAsBytesSync());

          await controller.dispose();
          registerFace.fold(
            (l) => emit(FaceScannerState.error(l)),
            (r) => emit(FaceScannerState.registeredFace(r)),
          );
        }
        // jika wajah sudah terdaftar, tambahkan wajah ke list (rekognisi presensi)
        else {
          recognitions.add(_recognition!);
        }

        if (recognitions.isNotEmpty) {
          print('reco ${recognitions.first.distance}');
          emit(FaceScannerState.loaded(recognitions.first));
        }
      } catch (e) {
        emit(FaceScannerState.error(e.toString()));
      }
    });
  }
}
