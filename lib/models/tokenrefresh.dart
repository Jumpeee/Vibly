import 'package:http/http.dart' as http;

class TokenRefresh {
  final String refresh;

  TokenRefresh({
    required this.refresh,
  });

  Future<http.Response> refreshToken() {
    final url = Uri.parse("http://127.0.0.1:8000/auth/refresh/");
    return http.post(
      url,
      body: {
        "refresh": refresh,
      },
    );
  }
}
