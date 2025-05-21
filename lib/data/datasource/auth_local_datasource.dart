import 'package:presensi_app/data/models/responses/login_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDatasource {
  Future<void> saveAuthData(LoginResponse loginResponse) async {
    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setString('auth_data', loginResponse.toJson());
    // await _prefs.setString('token', loginResponse.data!.token!);
    // await _prefs.setString('username', loginResponse.data!.name!);
  }

  Future<LoginResponse?> getAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    final authData = prefs.getString('auth_data');
    if (authData != null) {
      return LoginResponse.fromJson(authData);
    }
    return null;
  }

  // Future<String?> getToken() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final token = prefs.getString('token');
  //   print(token.toString());
  //   if (token != null) {
  //     return token.toString();
  //   }
  //   return null;
  // }

  Future<bool> isAuth() async {
    final prefs = await SharedPreferences.getInstance();
    final authData = prefs.getString('auth_data');
    if (authData != null) {
      return true;
    }
    return false;
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('auth_data')) {
      await prefs.remove('auth_data');
      print('auth_data berhasil dihapus');
    } else {
      print('auth_data tidak ditemukan');
    }
  }
}
