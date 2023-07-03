import 'package:flutter/material.dart';
import 'package:meal_monkey/config/theme.dart';
import 'package:meal_monkey/constants/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.focusNode,
    required this.onTap,
  });

  final String hintText;
  final FocusNode focusNode;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      onTap: onTap,
      focusNode: focusNode,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.formFieldbgColor,
        hintText: hintText,
        hintStyle: AppTheme.formFieldStyle,
        contentPadding: const EdgeInsets.all(20),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28.0),
          borderSide: BorderSide(width: 0, color: AppColors.formFieldbgColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28.0),
          borderSide: BorderSide(width: 0, color: AppColors.formFieldbgColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28.0),
          borderSide: BorderSide(width: 0, color: AppColors.formFieldbgColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28.0),
          borderSide: BorderSide(width: 0, color: AppColors.formFieldbgColor),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28.0),
          borderSide: BorderSide(width: 0, color: AppColors.formFieldbgColor),
        ),
      ),
    );
  }
}
