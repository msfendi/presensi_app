import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:presensi_app/data/datasource/auth_local_datasource.dart';
import 'package:presensi_app/data/models/responses/login_response_model.dart';
import 'package:presensi_app/models/register_response.dart';

import '../../core/constans/variable.dart';

class AuthRemoteDatasource {
  Future<Either<String, LoginResponse>> login(
      String email, String password) async {
    final response = await http.post(Uri.parse('${Variable.baseUrl}/api/login'),
        body: {'email': email, 'password': password});
    if (response.statusCode == 200) {
      return Right(LoginResponse.fromJson(response.body));
    } else {
      return Left('Internal Server Error');
    }
  }

  Future<Either<String, RegisterResponse>> register(
    String name,
    String email,
    String password,
  ) async {
    final response =
        await http.post(Uri.parse('${Variable.baseUrl}/api/register'), body: {
      'name': name,
      'email': email,
      'password': password,
    });
    if (response.statusCode == 200) {
      return Right(RegisterResponse.fromJson(response.body));
    } else {
      return Left('Internal Server Error');
    }
  }

  Future<Either<String, String>> updateAccount(
      String name, String email, String phone) async {
    final token = await AuthLocalDatasource().getAuthData();
    final response = await http.post(
      Uri.parse('${Variable.baseUrl}/api/update-account'),
      headers: {
        'Authorization': 'Bearer ${token?.data!.token}',
      },
      body: {'name': name, 'email': email, 'phone': phone},
    );
    if (response.statusCode == 200) {
      return Right('Update Success');
    } else {
      return Left('Internal Server Error');
    }
  }

  // logout function
  Future<Either<String, String>> logout() async {
    final token = await AuthLocalDatasource().getAuthData();
    // ambil token dari model login response
    final response = await http.post(
      Uri.parse('${Variable.baseUrl}/api/logout'),
      headers: {'Authorization': 'Bearer ${token?.data!.token}'},
    );
    if (response.statusCode == 200) {
      return Right('Logout Success');
    } else {
      return Left('Internal Server Error');
    }
  }
}
