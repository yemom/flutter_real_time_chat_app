import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/config/app_icon.dart';
import 'package:myfirst_flutter_project/config/app_route.dart';
import 'package:myfirst_flutter_project/config/app_string.dart';
import 'package:myfirst_flutter_project/provider/app_repo.dart';
import 'package:myfirst_flutter_project/provider/login_provider.dart';
import 'package:myfirst_flutter_project/style/app_color.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
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
                    color: AppColor.fontTitle,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Urbanist',
                  ),
                ),
                SizedBox(height: 18),
                Text(
                  AppString.logninToContinue,
                  style: TextStyle(color: AppColor.fontBody, fontSize: 14),
                ),
                Spacer(),
                Consumer<LoginProvider>(
                  builder:
                      (context, login, _) => Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          _ThemedField(
                            hint: 'username',
                            obscure: false,
                            onChanged: (value) => login.username = value,
                          ),
                          SizedBox(height: 12),
                          _ThemedField(
                            hint: 'password',
                            obscure: login.hidePassword,
                            onChanged: (value) => login.password = value,
                            trailing: IconButton(
                              icon: Icon(
                                login.hidePassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: AppColor.fontBody,
                              ),
                              onPressed: login.togglePasswordVisibility,
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
                      Navigator.of(context).pushNamed(AppRoute.forgot);
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: AppColor.primary,
                    ),
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
                            backgroundColor: AppColor.primary,
                            foregroundColor: AppColor.black,
                            minimumSize: Size.fromHeight(48),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                            elevation: 0,
                          ),
                          child:
                              login.isLoading
                                  ? SizedBox(
                                    height: 18,
                                    width: 18,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      color: AppColor.black,
                                    ),
                                  )
                                  : Text(AppString.login),
                        ),
                      ),
                ),
                Spacer(),
                Text(
                  AppString.orSignWith,
                  style: TextStyle(color: AppColor.fontBody),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    print('Google is clicked');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.cardBackground,
                    foregroundColor: AppColor.fontTitle,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: AppColor.borderColor),
                    ),
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
                          style: TextStyle(color: AppColor.fontTitle),
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
                    backgroundColor: AppColor.cardBackground,
                    foregroundColor: AppColor.fontTitle,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: AppColor.borderColor),
                    ),
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
                          style: TextStyle(color: AppColor.fontTitle),
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
                      style: TextStyle(color: AppColor.fontBody),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(AppRoute.signup);
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: AppColor.primary,
                      ),
                      child: Text(
                        AppString.signup,
                        style: TextStyle(fontWeight: FontWeight.bold),
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

class _ThemedField extends StatelessWidget {
  final String hint;
  final bool obscure;
  final Widget? trailing;
  final ValueChanged<String> onChanged;

  const _ThemedField({
    required this.hint,
    required this.obscure,
    required this.onChanged,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      obscureText: obscure,
      style: const TextStyle(color: AppColor.fontTitle, fontSize: 14),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: AppColor.disableFont, fontSize: 13),
        filled: true,
        fillColor: AppColor.fieldColor,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 12,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColor.borderColor, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColor.borderColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColor.primaryBlue, width: 1.3),
        ),
        suffixIcon: trailing,
      ),
    );
  }
}
