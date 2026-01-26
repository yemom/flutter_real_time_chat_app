import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/config/app_route.dart';
import 'package:myfirst_flutter_project/config/app_string.dart';
import 'package:myfirst_flutter_project/provider/app_repo.dart';
import 'package:myfirst_flutter_project/provider/signup_provider.dart';
import 'package:myfirst_flutter_project/style/app_color.dart';
import 'package:provider/provider.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height - 48,
              ),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 12),
                    Text(
                      'Create Account',
                      style: const TextStyle(
                        color: AppColor.fontTitle,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Urbanist',
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Join the community by creating a new account.',
                      style: TextStyle(color: AppColor.fontBody, fontSize: 14),
                    ),
                    const SizedBox(height: 24),
                    Consumer<SignupProvider>(
                      builder:
                          (context, signup, _) => Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              _ThemedField(
                                hint: AppString.firstName,
                                obscure: false,
                                onChanged: (value) => signup.firstName = value,
                              ),
                              const SizedBox(height: 12),
                              _ThemedField(
                                hint: AppString.lastName,
                                obscure: false,
                                onChanged: (value) => signup.lastName = value,
                              ),
                              const SizedBox(height: 12),
                              _ThemedField(
                                hint: AppString.username,
                                obscure: false,
                                onChanged: (value) => signup.username = value,
                              ),
                              const SizedBox(height: 12),
                              _ThemedField(
                                hint: AppString.email,
                                obscure: false,
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (value) => signup.email = value,
                              ),
                              const SizedBox(height: 12),
                              _ThemedField(
                                hint: AppString.password,
                                obscure: signup.hidePassword,
                                onChanged: (value) => signup.password = value,
                                trailing: IconButton(
                                  icon: Icon(
                                    signup.hidePassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: AppColor.fontBody,
                                  ),
                                  onPressed: signup.togglePasswordVisibility,
                                ),
                              ),
                              const SizedBox(height: 12),
                              _ThemedField(
                                hint: 'Confirm password',
                                obscure: signup.hideConfirmPassword,
                                onChanged:
                                    (value) => signup.confirmPassword = value,
                                trailing: IconButton(
                                  icon: Icon(
                                    signup.hideConfirmPassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: AppColor.fontBody,
                                  ),
                                  onPressed:
                                      signup.toggleConfirmPasswordVisibility,
                                ),
                              ),
                              if (signup.error != null) ...[
                                const SizedBox(height: 8),
                                Text(
                                  signup.error!,
                                  style: const TextStyle(
                                    color: Colors.redAccent,
                                  ),
                                ),
                              ],
                            ],
                          ),
                    ),
                    const SizedBox(height: 28),
                    Consumer<SignupProvider>(
                      builder:
                          (context, signup, _) => ElevatedButton(
                            onPressed:
                                signup.isLoading
                                    ? null
                                    : () async {
                                      try {
                                        final res =
                                            await signup.registerAndLogin();
                                        context.read<AppRepo>().user = res.user;
                                        context.read<AppRepo>().token =
                                            res.token;
                                        if (!context.mounted) return;
                                        Navigator.of(
                                          context,
                                        ).pushReplacementNamed(AppRoute.main);
                                      } catch (_) {
                                        if (!context.mounted) return;
                                        final message =
                                            signup.error ??
                                            'Unable to sign up right now.';
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          SnackBar(content: Text(message)),
                                        );
                                      }
                                    },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.primary,
                              foregroundColor: AppColor.black,
                              minimumSize: const Size.fromHeight(48),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                              elevation: 0,
                            ),
                            child:
                                signup.isLoading
                                    ? const SizedBox(
                                      height: 18,
                                      width: 18,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                        color: AppColor.black,
                                      ),
                                    )
                                    : const Text(AppString.signup),
                          ),
                    ),
                    const SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account?',
                          style: TextStyle(color: AppColor.fontBody),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(
                              context,
                            ).pushReplacementNamed(AppRoute.login);
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: AppColor.primary,
                          ),
                          child: const Text(
                            AppString.login,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ),
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
  final TextInputType? keyboardType;
  final ValueChanged<String> onChanged;

  const _ThemedField({
    required this.hint,
    required this.obscure,
    required this.onChanged,
    this.keyboardType,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      obscureText: obscure,
      keyboardType: keyboardType,
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
