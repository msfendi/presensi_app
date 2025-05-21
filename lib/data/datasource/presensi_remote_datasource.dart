import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:presensi_app/data/datasource/auth_local_datasource.dart';
import 'package:presensi_app/data/models/responses/presensi_response_model.dart';

import '../../core/constans/variable.dart';

class PresensiRemoteDatasource {
  Future<Either<String, PresensiResponse>> getPresensi() async {
    final token = await AuthLocalDatasource().getAuthData();

    final response = await http.get(
      Uri.parse('${Variable.baseUrl}/api/get-presensi'),
      headers: {
        'Authorization': 'Bearer ${token?.data!.token}',
        // 'Content-Type': 'application/json'
      },
    );
    if (response.statusCode == 200) {
      return Right(PresensiResponse.fromJson(response.body));
    } else {
      return Left('Internal Server Error');
    }
  }

  Future<bool> isCheckIn() async {
    final token = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      Uri.parse('${Variable.baseUrl}/api/get-presensi'),
      headers: {
        'Authorization': 'Bearer ${token?.data!.token}',
      },
    );
    
    final getAttendanceToday = PresensiResponse.fromJson(response.body);

    if (getAttendanceToday.presensi.isNotEmpty) {
      if (getAttendanceToday.presensi.first.isHariIni == true && getAttendanceToday.presensi.first.masuk != null) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  Future<Either<String, String>> savePresensi(
    String latitude,
    String longitude,
    String status,
    String? filePath,
  ) async {
    final token = await AuthLocalDatasource().getAuthData();

    if (status == 'hadir') {
      final response = await http
          .post(Uri.parse('${Variable.baseUrl}/api/save-presensi'), headers: {
        'Authorization': 'Bearer ${token?.data!.token}',
      }, body: {
        'status': status,
        'latitude': latitude,
        'longitude': longitude,
      });

      if (response.statusCode == 200) {
        return Right('Presensi Masuk berhasil ditambahkan');
      } else {
        return Left('Internal Server Error');
      }
    } else {
      final request = http.MultipartRequest(
          'POST', Uri.parse('${Variable.baseUrl}/api/save-presensi'));

      request.headers['Authorization'] = 'Bearer ${token?.data!.token}';
      request.headers['Content-Type'] = 'multipart/form-data';

      request.fields['latitude'] = latitude;
      request.fields['longitude'] = longitude;
      request.fields['status'] = status;

      final myFile = await http.MultipartFile.fromPath('file', filePath!,
          filename: '${DateTime.now()}-${token?.data!.name}.pdf',
          contentType: MediaType('pdf', 'pdf'));
      request.files.add(myFile);

      final response = await request.send();

      if (response.statusCode == 200) {
        return Right('Presensi Masuk berhasil ditambahkan');
      } else {
        return Left('Internal Server Error');
      }
    }
  }

  Future<Either<String, String>> updatePresensi() async {
    final token = await AuthLocalDatasource().getAuthData();

    final response = await http.post(
      Uri.parse('${Variable.baseUrl}/api/update-presensi'),
      headers: {
        'Authorization': 'Bearer ${token?.data!.token}',
      },
    );
    if (response.statusCode == 200) {
      return Right('Presensi Pulang berhasil ditambahkan');
    } else {
      return Left('Internal Server Error');
    }
  }
}
