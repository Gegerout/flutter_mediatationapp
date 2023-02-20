import 'package:auth_user_repository/auth_user_repository.dart';
import 'package:dio/dio.dart';

class SearchUserRepository {
  final _httpClient = Dio();

  Future<List<UserModel>> onUserAuth(String query) async {
    const apiUrl = 'http://mskko2021.mad.hakta.pro/api/user/login';

    try {
      final user = await _httpClient.post(apiUrl, data: {
        "email": "",
        "password": ""
      });

      return (user.data as List).map((json) => UserModel.fromJson(json)).toList();
    } catch (e) {
      print('ERROR $e');
      return [];
    }
  }
}