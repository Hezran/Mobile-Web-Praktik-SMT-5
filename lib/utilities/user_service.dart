import 'package:dio/dio.dart';
import 'package:coba_flutter/model/user_model.dart';

class UserService {
  final Dio _dio = Dio();
  static const _baseUrl = 'https://reqres.in/api';
  static const _users = 'users';

  static Future<List<UserModel>> fetchUser() async {
    try {
      final response = await Dio().get(
        '$_baseUrl/$_users',
        queryParameters: {
          'page': '1',
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data['data'];
        List<UserModel> users = List.from(
          data.map((user) => UserModel.fromJson(json: user)),
        );
        return users;
      }
      throw Exception('Failed to fetch users: ${response.statusCode}');
    } catch (e) {
      print('Error fetching users: $e');
      rethrow;
    }
  }
}
