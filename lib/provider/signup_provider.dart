import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/data/response/login_response.dart';
import 'package:myfirst_flutter_project/data/service/login_service.dart';
import 'package:myfirst_flutter_project/data/service/register_service.dart';
import 'package:myfirst_flutter_project/data/service/base_service.dart';

class SignupProvider extends ChangeNotifier {
  String firstName = '';
  String lastName = '';
  String username = '';
  String email = '';
  String password = '';
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
    if (firstName.isEmpty ||
        lastName.isEmpty ||
        username.isEmpty ||
        email.isEmpty) {
      error = 'Please fill in all fields';
      return false;
    }
    final emailRegex = RegExp(r'^.+@.+\..+$');
    if (!emailRegex.hasMatch(email)) {
      error = 'Please enter a valid email address';
      return false;
    }
    if (password.isEmpty || confirmPassword.isEmpty) {
      error = 'Password is required';
      return false;
    }
    if (password != confirmPassword) {
      error = 'Passwords do not match';
      return false;
    }
    error = null;
    return true;
  }

  Future<LoginResponse> registerAndLogin() async {
    if (!_validate()) {
      notifyListeners();
      throw Exception(error);
    }
    try {
      isLoading = true;
      notifyListeners();

      // Create the account
      await RegisterService(
        firstName: firstName,
        lastName: lastName,
        username: username,
        email: email,
        password: password,
      ).call();

      // Immediately log the user in to obtain token + user data
      final loginRes = await LoginService(username, password).call();
      return loginRes;
    } catch (e) {
      error =
          e is ApiException ? e.message : 'Sign up failed. Please try again.';
      notifyListeners();
      rethrow;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
