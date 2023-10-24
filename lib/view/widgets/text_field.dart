import 'package:firebase_todo/view/app/theme/app_color.dart';
import 'package:firebase_todo/view/app/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextField inputTextField({
  required String text,
  required IconData icon,
  required bool isPasswordType,
  required TextEditingController controller,
}) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: AppColor.black,
    style: AppTextTheme.bodyMedium,
    decoration: InputDecoration(
      prefixIcon: Icon(
        icon,
        color: AppColor.black,
      ),
      labelText: text,
      labelStyle: AppTextTheme.bodyMedium,
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      // fillColor: AppColor.blue.withOpacity(0.5),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          30.0.r,
        ),
        borderSide: const BorderSide(
          width: 1,
          style: BorderStyle.solid,
        ),
      ),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}
