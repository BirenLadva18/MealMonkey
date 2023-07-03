import 'package:flutter/material.dart';
import 'package:meal_monkey/constants/colors.dart';

class AppTheme {
  static TextStyle buttonTextStyle = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 16,
  );

  static TextStyle outlinedButtonTextStyle = TextStyle(
    color: AppColors.orangeColor,
    fontSize: 16,
  );

  static TextStyle headerStyle = TextStyle(
    color: AppColors.headerColor,
    fontSize: 30,
  );

  static TextStyle subHeaderStyle = TextStyle(
    color: AppColors.subHeadingColor,
    fontSize: 14,
  );

  static TextStyle formFieldStyle = TextStyle(
    color: AppColors.greyColor,
    fontSize: 14,
  );

  static TextStyle orangeTextStyle = TextStyle(
    color: AppColors.orangeColor,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
}
