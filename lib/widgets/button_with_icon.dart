import 'package:flutter/material.dart';
import 'package:meal_monkey/config/theme.dart';

import '../constants/colors.dart';

class ButtonWithIconAndText extends StatelessWidget {
  const ButtonWithIconAndText({
    super.key,
    required this.buttonText,
    required this.buttonOnPressed,
    required this.buttonColor,
    required this.buttonIcon,
  });

  final String buttonText;
  final Function() buttonOnPressed;
  final Color buttonColor;
  final IconData buttonIcon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      minWidth: double.infinity,
      onPressed: buttonOnPressed,
      color: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          28,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            buttonIcon,
            color: AppColors.whiteColor,
          ),
          const SizedBox(width: 15),
          Text(
            buttonText,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: AppTheme.buttonTextStyle,
          ),
        ],
      ),
    );
  }
}
