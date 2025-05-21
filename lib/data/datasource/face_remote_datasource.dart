import 'dart:io';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:presensi_app/data/models/responses/get_face_response_model.dart';

import '../../core/constans/variable.dart';
import 'auth_local_datasource.dart';

class FaceRemoteDatasource {
  Future<GetFaceResponse> getFaceData() async {
    final token = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      Uri.parse('${Variable.baseUrl}/api/get-face'),
      headers: {
        'Authorization': 'Bearer ${token?.data!.token}',
      },
    );
    return GetFaceResponse.fromJson(response.body);
  }

  Future<bool> isFaceData() async {
    final token = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      Uri.parse('${Variable.baseUrl}/api/get-face'),
      headers: {
        'Authorization': 'Bearer ${token?.data!.token}',
      },
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future<Either<String, GetFaceResponse>> getFace() async {
    final token = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      Uri.parse('${Variable.baseUrl}/api/get-face'),
      headers: {
        'Authorization': 'Bearer ${token?.data!.token}',
      },
    );
    // print('response status code: ${response.statusCode}');
    if (response.statusCode == 200) {
      return Right(GetFaceResponse.fromJson(response.body));
    } else {
      return Left('Internal Server Error');
    }
  }

  Future<Either<String, String>> registerFaceData(
      List<double> embedding, Uint8List croppedFace) async {
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
      return Right('Wajah berhasil ditambahkan');
    } else {
      return Left('Wajah gagal ditambahkan');
    }
  }
}
