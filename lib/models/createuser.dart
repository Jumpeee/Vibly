import 'package:dio/dio.dart' as dio;
import 'package:http/http.dart' as http;
import 'dart:convert' show jsonEncode;

class CreateUser {
  final String? publicId;
  final String username;
  final String password;
  final String email;
  final String firstName;
  final String lastName;
  final dio.FormData? profilePicture;

  const CreateUser({
    this.publicId,
    required this.username,
    required this.password,
    required this.email,
    this.firstName = "",
    this.lastName = "",
    this.profilePicture,
  });

  Future<http.Response> addUser() {
    final url = Uri.parse("http://127.0.0.1:8000/user/");

    return http.post(
      url,
      headers: <String, String>{
        "Content-Type": "application/json; charset=UTF-8",
      },
      body: jsonEncode({
        "username": username,
        "password": password,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
      }),
    );
  }
}
