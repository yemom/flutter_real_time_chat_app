import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/style/app_color.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final ValueChanged<String>? onChange;
  final TextEditingController? controller;
  const AppTextField({
    super.key,
    required this.hint,
    this.onChange,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      controller: controller,
      style: const TextStyle(color: AppColor.fontTitle, fontSize: 14),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: AppColor.disableFont, fontSize: 13),
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
        filled: true,
        fillColor: AppColor.fieldColor,
      ),
    );
  }
}
