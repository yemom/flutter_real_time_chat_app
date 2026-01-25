import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/config/app_route.dart';
import 'package:myfirst_flutter_project/config/app_string.dart';
import 'package:myfirst_flutter_project/provider/forgot_password_provider.dart';
import 'package:myfirst_flutter_project/style/app_color.dart';
import 'package:provider/provider.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(title: const Text('Forgot Password')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            const Text(
              'Enter your username and a new password.',
              style: TextStyle(color: AppColor.fontBody, fontSize: 14),
            ),
            const SizedBox(height: 24),
            Consumer<ForgotPasswordProvider>(
              builder:
                  (context, fp, _) => Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _Field(
                        hint: 'username',
                        obscure: false,
                        onChanged: (v) => fp.username = v,
                      ),
                      const SizedBox(height: 12),
                      _Field(
                        hint: AppString.password,
                        obscure: fp.hidePassword,
                        onChanged: (v) => fp.newPassword = v,
                        trailing: IconButton(
                          icon: Icon(
                            fp.hidePassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: AppColor.fontBody,
                          ),
                          onPressed: fp.togglePasswordVisibility,
                        ),
                      ),
                      const SizedBox(height: 12),
                      _Field(
                        hint: 'Confirm password',
                        obscure: fp.hideConfirmPassword,
                        onChanged: (v) => fp.confirmPassword = v,
                        trailing: IconButton(
                          icon: Icon(
                            fp.hideConfirmPassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: AppColor.fontBody,
                          ),
                          onPressed: fp.toggleConfirmPasswordVisibility,
                        ),
                      ),
                      if (fp.error != null) ...[
                        const SizedBox(height: 8),
                        Text(
                          fp.error!,
                          style: const TextStyle(color: Colors.redAccent),
                        ),
                      ],
                    ],
                  ),
            ),
            const SizedBox(height: 24),
            Consumer<ForgotPasswordProvider>(
              builder:
                  (context, fp, _) => ElevatedButton(
                    onPressed:
                        fp.isLoading
                            ? null
                            : () async {
                              try {
                                await fp.submit();
                                if (!context.mounted) return;
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                      'Password updated. Please log in.',
                                    ),
                                  ),
                                );
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                  AppRoute.login,
                                  (_) => false,
                                );
                              } catch (_) {
                                if (!context.mounted) return;
                                final msg = fp.error ?? 'Reset failed.';
                                ScaffoldMessenger.of(
                                  context,
                                ).showSnackBar(SnackBar(content: Text(msg)));
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
                        fp.isLoading
                            ? const SizedBox(
                              height: 18,
                              width: 18,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: AppColor.black,
                              ),
                            )
                            : const Text('Reset password'),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Field extends StatelessWidget {
  final String hint;
  final bool obscure;
  final Widget? trailing;
  final ValueChanged<String> onChanged;

  const _Field({
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
