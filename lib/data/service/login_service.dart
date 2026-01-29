import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:myfirst_flutter_project/config/app_config.dart';
import 'package:myfirst_flutter_project/data/response/login_response.dart';

class LoginService {
  final String username;
  final String password;

  LoginService(this.username, this.password);

  Future<LoginResponse> call() async {
    final result = await http.post(
      Uri.parse('${AppConfig.baseUrl}/auth'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'username': username, 'password': password}),
    );
    if (result.statusCode < 200 || result.statusCode >= 300) {
      try {
        final decoded = jsonDecode(result.body);
        if (decoded is Map && decoded['error'] != null) {
          throw Exception(decoded['error'].toString());
        }
      } catch (_) {
        // ignore and fall through
      }
      throw Exception('Login failed (${result.statusCode}): ${result.body}');
    }

    final Map<String, dynamic> json =
        jsonDecode(result.body) as Map<String, dynamic>;
    return LoginResponse.fromJson(json);
  }
}
