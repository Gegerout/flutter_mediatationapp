import 'package:auth_user_repository/auth_user_repository.dart';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';

import '../core/failures.dart';

class AuthUserRepository {
  final _httpClient = Dio();

  Future<UserModel?> onUserAuth(String email, String password) async {
    const apiUrl = 'http://mskko2021.mad.hakta.pro/api/user/login';

    try {
      final user = await _httpClient.post(apiUrl, data: {
        "email": email,
        "password": password
      });

      print(user);

      return UserModel.fromJson(user.data);
    } catch (e) {
      print('ERROR $e');
      return null;
    }
  }
}