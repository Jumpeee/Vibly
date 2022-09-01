import 'dart:convert' show jsonEncode;
import 'package:dio/dio.dart' show FormData;
import 'package:http/http.dart' as http;

class User {
  final int? publicId;
  final String? username;
  final String? email;
  final String? firstName;
  final String? lastName;
  final FormData? profilePicture;

  User({
    this.publicId,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.profilePicture,
  });

  Future<http.Response> get getUser {
    final url = Uri.parse("http://127.0.0.1:8000/user/");
    return http.get(url);
  }

  Future<http.Response> putUser() {
    final url = Uri.parse("http://127.0.0.1:8000/user/");
    return http.put(
      url,
      body: jsonEncode(
        {
          "first_name": firstName,
          "last_name": lastName,
        },
      ),
    );
  }

  Future<http.Response> patchUser() {
    final url = Uri.parse("http://127.0.0.1:8000/user/");
    return http.patch(
      url,
      body: jsonEncode(
        {
          "first_name": firstName,
          "last_name": lastName,
        },
      ),
    );
  }

  Future<http.Response> deleteUser() {
    final url = Uri.parse("http://127.0.0.1:8000/user/");
    return http.delete(url);
  }
}
