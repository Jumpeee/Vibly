import 'package:http/http.dart' as http;

import 'dart:convert' show jsonEncode;

class TokenObtainPair {
  final String email;
  final String password;

  TokenObtainPair({
    required this.email,
    required this.password,
  });

  Future<http.Response> get token async {
    final url = Uri.parse("http://127.0.0.1:8000/auth/token/");

    final resp = await http.post(
      url,
      headers: <String, String>{
        "Content-Type": "application/json; charset=UTF-8",
      },
      body: jsonEncode(
        {
          "email": email,
          "password": password,
        },
      ),
    );

    return resp;
  }
}
