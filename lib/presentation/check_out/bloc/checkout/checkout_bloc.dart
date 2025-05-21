import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image/image.dart' as img;
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';

import '../../../../data/datasource/face_remote_datasource.dart';
import '../../../../data/datasource/presensi_remote_datasource.dart';
import '../../../home/services/Recognition.dart';
import '../../../home/services/Recognizer.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  final FaceRemoteDatasource faceRemoteDatasource;
  final PresensiRemoteDatasource presensiRemoteDatasource;
  Recognizer recognizer = Recognizer();

  CheckoutBloc(this.faceRemoteDatasource, this.presensiRemoteDatasource)
      : super(_Initial()) {
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
      }
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
          emit(CheckoutState.cameraReady(controller));

          controller.startImageStream((CameraImage image) async {
            try {
              final faces = await _processCameraImage(image);
              if (faces.isNotEmpty) {
                // Stop the camera stream
                await controller.stopImageStream();
                XFile wajah = await controller.takePicture();
                _image = File(wajah.path);

                // Trigger the event to notify Bloc
                add(CheckoutEvent.faceDetected(_image!));
              }
            } catch (e) {
              print('Error in face detection: $e');
            }
          });
        }
      } catch (e) {
        emit(CheckoutState.error(e.toString()));
      }
    });

    on<_FaceDetected>((event, emit) async {
      try {
        _image = await removeRotation(event.imageFile);
        Recognition? _recognition = await doFaceDetection();
        recognitions.add(_recognition!);

        if (recognitions.isNotEmpty) {
          print('reco ${recognitions.first.distance}');
          emit(CheckoutState.loaded(recognitions.first));
        }
      } catch (e) {
        emit(CheckoutState.error(e.toString()));
      }
    });

    on<_CheckOutPresensi>((event, emit) async {
      // TODO: implement event handler
      emit(CheckoutState.loading());
      final result = await presensiRemoteDatasource.updatePresensi();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_CheckOutLoaded(r)),
      );
    });
  }
}
