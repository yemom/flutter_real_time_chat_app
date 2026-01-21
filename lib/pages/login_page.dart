import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/config/app_icon.dart';
import 'package:myfirst_flutter_project/config/app_route.dart';
import 'package:myfirst_flutter_project/config/app_string.dart';
import 'package:myfirst_flutter_project/provider/app_repo.dart';
import 'package:myfirst_flutter_project/provider/login_provider.dart';
import 'package:provider/provider.dart';

const baseUrl = 'http://10.0.2.2:8081';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final loginRoute = '$baseUrl/login';
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),
                Text(
                  AppString.helloWelcome,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Urbanist',
                  ),
                ),
                SizedBox(height: 18),
                Text(
                  AppString.logninToContinue,
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                Consumer<LoginProvider>(
                  builder:
                      (context, login, _) => Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextField(
                            onChanged: (value) {
                              login.username = value;
                            },
                            decoration: InputDecoration(
                              hintText: 'username',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.5),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            onChanged: (value) {
                              login.password = value;
                            },
                            obscureText: login.hidePassword,
                            decoration: InputDecoration(
                              hintText: 'password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.5),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  login.hidePassword
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.white,
                                ),
                                onPressed: login.togglePasswordVisibility,
                              ),
                            ),
                          ),
                          if (login.error != null) ...[
                            SizedBox(height: 8),
                            Text(
                              login.error!,
                              style: TextStyle(color: Colors.redAccent),
                            ),
                          ],
                        ],
                      ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      print('Forgot is clicked');
                    },
                    style: TextButton.styleFrom(foregroundColor: Colors.white),
                    child: Text(AppString.forgotPassword),
                  ),
                ),
                SizedBox(height: 32),
                Consumer<LoginProvider>(
                  builder:
                      (context, login, _) => SizedBox(
                        width: 250,
                        child: ElevatedButton(
                          onPressed:
                              login.isLoading
                                  ? null
                                  : () async {
                                    try {
                                      final value = await login.login();
                                      context.read<AppRepo>().user = value.user;
                                      context.read<AppRepo>().token =
                                          value.token;
                                      if (!context.mounted) return;
                                      Navigator.of(
                                        context,
                                      ).pushReplacementNamed(AppRoute.main);
                                    } catch (_) {
                                      // error is already set in provider; UI shows it
                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
                                        const SnackBar(
                                          content: Text('Login failed.'),
                                        ),
                                      );
                                    }
                                  },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber,
                            foregroundColor: Colors.black,
                          ),
                          child:
                              login.isLoading
                                  ? SizedBox(
                                    height: 18,
                                    width: 18,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      color: Colors.black,
                                    ),
                                  )
                                  : Text(AppString.login),
                        ),
                      ),
                ),
                Spacer(),
                Text(
                  AppString.orSignWith,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    print('Google is clicked');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: SizedBox(
                    height: 48,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppIcon.google, width: 22, height: 22),
                        SizedBox(width: 10),
                        Text(
                          AppString.loginWithGoogle,
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    print('Facebook is clicked');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: SizedBox(
                    height: 48,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppIcon.facebook, width: 22, height: 22),
                        SizedBox(width: 10),
                        Text(
                          AppString.loginWithFacebook,
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppString.dontHaveAnAccount,
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.amber,
                      ),
                      child: Text(
                        AppString.signup,
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
