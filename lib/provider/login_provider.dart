import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/data/response/login_response.dart';
import 'package:myfirst_flutter_project/data/service/base_service.dart';
import 'package:myfirst_flutter_project/data/service/login_service.dart';

class LoginProvider extends ChangeNotifier {
  var username = '';
  var password = '';
  String? error;
  bool isLoading = false;
  bool hidePassword = true;

  void togglePasswordVisibility() {
    hidePassword = !hidePassword;
    notifyListeners();
  }

  Future<LoginResponse> login() async {
    if (username.isEmpty || password.isEmpty) {
      error = 'Please enter both username and password';
      notifyListeners();
      throw Exception(error);
    }
    try {
      isLoading = true;
      error = null;
      notifyListeners();
      final u = username.trim();
      final p = password.trim();
      final res = await LoginService(u, p).call();
      return res;
    } catch (e) {
      // Show backend-provided error if available
      error =
          e is ApiException
              ? e.message
              : 'Login failed. Check your credentials.';
      notifyListeners();
      rethrow;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
