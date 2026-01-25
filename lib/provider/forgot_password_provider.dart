import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/data/service/forgot_password_service.dart';
import 'package:myfirst_flutter_project/data/service/base_service.dart';

class ForgotPasswordProvider extends ChangeNotifier {
  String username = '';
  String newPassword = '';
  String confirmPassword = '';
  bool hidePassword = true;
  bool hideConfirmPassword = true;
  bool isLoading = false;
  String? error;

  void togglePasswordVisibility() {
    hidePassword = !hidePassword;
    notifyListeners();
  }

  void toggleConfirmPasswordVisibility() {
    hideConfirmPassword = !hideConfirmPassword;
    notifyListeners();
  }

  bool _validate() {
    if (username.isEmpty) {
      error = 'Username is required';
      return false;
    }
    if (newPassword.isEmpty || confirmPassword.isEmpty) {
      error = 'Password is required';
      return false;
    }
    if (newPassword != confirmPassword) {
      error = 'Passwords do not match';
      return false;
    }
    error = null;
    return true;
  }

  Future<void> submit() async {
    if (!_validate()) {
      notifyListeners();
      throw Exception(error);
    }
    try {
      isLoading = true;
      notifyListeners();
      await ForgotPasswordService(
        username: username,
        newPassword: newPassword,
      ).call();
    } catch (e) {
      error = e is ApiException ? e.message : 'Reset failed. Please try again.';
      notifyListeners();
      rethrow;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
