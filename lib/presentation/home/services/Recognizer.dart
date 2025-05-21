import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';
import 'package:http/http.dart' as http;
import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';
import 'package:presensi_app/data/models/responses/get_face_response_model.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import '../../../core/constans/variable.dart';
import '../../../data/datasource/auth_local_datasource.dart';
import 'Recognition.dart';

class Recognizer {
  Interpreter? interpreter;
  late InterpreterOptions _interpreterOptions;
  static const int WIDTH = 112;
  static const int HEIGHT = 112;

  Map<String, Recognition> registered = Map();

  Recognizer({int? numThreads}) {
    _interpreterOptions = InterpreterOptions();

    if (numThreads != null) {
      _interpreterOptions.threads = numThreads;
    }
    loadModel();
    initDB();
  }

  initDB() async {
    await loadRegisteredFaces();
  }

  Future loadRegisteredFaces() async {
    final token = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      Uri.parse('${Variable.baseUrl}/api/get-face'),
      headers: {
        'Authorization': 'Bearer ${token?.data!.token}',
        // 'Content-Type': 'application/json'
      },
    );

    try {
      if (response.statusCode == 200) {
        final data = GetFaceResponse.fromJson(response.body);
        String name = data.data!.userId.toString();
        List<double> embd = data.data!.faceData!
            .split(',')
            .map((e) => double.parse(e))
            .toList()
            .cast<double>();
        Recognition recognition = Recognition(name, Rect.zero, embd, 0);
        registered.putIfAbsent(name, () => recognition);
      }
    } catch (e) {
      print(e);
    }
  }

  void registerFaceInDB(List<double> embedding, Uint8List croppedFace) async {
    final token = await AuthLocalDatasource().getAuthData();
    final tempDir = await getTemporaryDirectory();
    File file = await File('${tempDir.path}/${token?.data!.name}.jpg').create();
    file.writeAsBytesSync(croppedFace);

    final request = http.MultipartRequest(
        'POST', Uri.parse('${Variable.baseUrl}/api/upload-face'));
    final myFile = http.MultipartFile(
      'image_path',
      file.readAsBytes().asStream(),
      file.lengthSync(),
      filename: '${token?.data!.name}.jpg',
    );
    request.headers['Authorization'] = 'Bearer ${token?.data!.token}';
    request.headers['Content-Type'] = 'multipart/form-data';

    request.fields['user_id'] = token?.data!.id.toString() ?? '';
    request.fields['face_data'] = embedding.join(",");
    request.files.add(myFile);

    final response = await request.send();
    if (response.statusCode == 200) {
      await response.stream.bytesToString();
    }
  }

  Future<void> loadModel() async {
    try {
      interpreter =
          await Interpreter.fromAsset('assets/mobile_face_net.tflite');
    } catch (e) {
      print('Unable to create interpreter, Caught Exception: ${e.toString()}');
    }
  }

  List<dynamic> imageToArray(img.Image inputImage) {
    img.Image resizedImage =
        img.copyResize(inputImage, width: WIDTH, height: HEIGHT);
    List<double> flattenedList = resizedImage.data!
        .expand((channel) => [channel.r, channel.g, channel.b])
        .map((value) => value.toDouble())
        .toList();
    Float32List float32Array = Float32List.fromList(flattenedList);
    int channels = 3;
    int height = HEIGHT;
    int width = WIDTH;
    Float32List reshapedArray = Float32List(1 * height * width * channels);
    for (int c = 0; c < channels; c++) {
      for (int h = 0; h < height; h++) {
        for (int w = 0; w < width; w++) {
          int index = c * height * width + h * width + w;
          reshapedArray[index] =
              (float32Array[c * height * width + h * width + w] - 127.5) /
                  127.5;
        }
      }
    }
    return reshapedArray.reshape([1, 112, 112, 3]);
  }

  Recognition recognize(img.Image image, Rect location) {
    //TODO crop face from image resize it and convert it to float array
    var input = imageToArray(image);
    //TODO output array
    List output = List.filled(1 * 192, 0).reshape([1, 192]);
    //TODO performs inference
    interpreter?.run(input, output);
    //TODO convert dynamic list to double list
    List<double> outputArray = output.first.cast<double>();

    //TODO looks for the nearest embeeding in the database and returns the pair
    Pair pair = findNearest(outputArray);
    return Recognition('', location, outputArray, pair.distance);
  }

  //TODO  looks for the nearest embeeding in the database and returns the pair which contain information of registered face with which face is most similar
  findNearest(List<double> emb) {
    Pair pair = Pair("Unknown", -1);
    for (MapEntry<String, Recognition> item in registered.entries) {
      final String name = item.key;
      List<double> knownEmb = item.value.embeddings;
      double distance = 0;
      for (int i = 0; i < knownEmb.length; i++) {
        double diff = emb[i] - knownEmb[i];
        distance += diff * diff;
      }
      distance = sqrt(distance);
      if (pair.distance == -1 || distance < pair.distance) {
        pair.distance = distance;
        pair.name = name;
      }
    }
    return pair;
  }

  void close() {
    interpreter?.close();
  }
}

class Pair {
  String name;
  double distance;
  Pair(this.name, this.distance);
}
