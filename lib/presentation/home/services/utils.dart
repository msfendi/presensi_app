// import 'dart:math';
// import 'dart:typed_data';
// import 'dart:ui';
// import 'package:image/image.dart' as imglib;
// import 'package:camera/camera.dart';
// import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
// import 'package:google_ml_kit/google_ml_kit.dart';

// typedef HandleDetection = Future<dynamic> Function(InputImage image);

// enum Choice { view, delete }

// Future<CameraDescription> getCamera(CameraLensDirection dir) async {
//   return await availableCameras().then(
//     (List<CameraDescription> cameras) => cameras.firstWhere(
//       (CameraDescription camera) => camera.lensDirection == dir,
//     ),
//   );
// }

// InputImageMetadata buildMetaData(
//   CameraImage image,
//   InputImageRotation rotation,
// ) {
//   return InputImageMetadata(
//     size: Size(image.width.toDouble(), image.height.toDouble()),
//     rotation: rotation,
//     format: InputImageFormat.nv21,
//     bytesPerRow: image.planes[0].bytesPerRow,
//   );
// }

// Future<dynamic> detect(
//     CameraImage image, HandleDetection handleDetection) async {
//   try {
//     CameraDescription description = await getCamera(CameraLensDirection.front);
//     InputImageRotation rotation = rotationIntToImageRotation(
//       description.sensorOrientation,
//     );

//     return handleDetection(
//       InputImage.fromBytes(
//         metadata: buildMetaData(image, rotation),
//         bytes: image.planes[0].bytes,
//       ),
//     );
//   } catch (e) {
//     print({'detect': e});
//   }
// }

// InputImageRotation rotationIntToImageRotation(int rotation) {
//   switch (rotation) {
//     case 0:
//       return InputImageRotation.rotation0deg;
//     case 90:
//       return InputImageRotation.rotation90deg;
//     case 180:
//       return InputImageRotation.rotation180deg;
//     default:
//       assert(rotation == 270);
//       return InputImageRotation.rotation270deg;
//   }
// }

// Float32List imageToByteListFloat32(imglib.Image image) {
//   var convertedBytes = Float32List(1 * 112 * 112 * 3);
//   var buffer = Float32List.view(convertedBytes.buffer);
//   int pixelIndex = 0;

//   for (var i = 0; i < 112; i++) {
//     for (var j = 0; j < 112; j++) {
//       int pixel = image.getPixel(j, i) as int;
//       // Extract RGBA components from pixel value
//       int r = (pixel >> 24) & 0xFF;
//       int g = (pixel >> 16) & 0xFF;
//       int b = (pixel >> 8) & 0xFF;

//       // Normalize and store pixel values
//       buffer[pixelIndex++] = (r - 128) / 128.0;
//       buffer[pixelIndex++] = (g - 128) / 128.0;
//       buffer[pixelIndex++] = (b - 128) / 128.0;
//     }
//   }
//   return convertedBytes.buffer.asFloat32List();
// }

// double euclideanDistance(List e1, List e2) {
//   double sum = 0.0;
//   for (int i = 0; i < e1.length; i++) {
//     sum += pow((e1[i] - e2[i]), 2);
//   }
//   return sqrt(sum);
// }
