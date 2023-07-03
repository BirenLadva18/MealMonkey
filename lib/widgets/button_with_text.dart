import 'package:flutter/material.dart';
import 'package:meal_monkey/config/theme.dart';

import '../constants/colors.dart';

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.buttonText,
    required this.buttonOnPressed,
  });

  final String buttonText;
  final Function() buttonOnPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      minWidth: double.infinity,
      onPressed: buttonOnPressed,
      color: AppColors.orangeColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          28,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      child: Text(
        buttonText,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: AppTheme.buttonTextStyle,
      ),
    );
  }
}
