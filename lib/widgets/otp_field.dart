import 'package:flutter/material.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:pinput/pinput.dart';

class EnterOTPField extends StatefulWidget {
  const EnterOTPField({
    super.key,
    required this.categoryWidth,
    required this.pinController,
    required this.focusNode,
  });

  final double categoryWidth;
  final TextEditingController pinController;
  final FocusNode focusNode;

  @override
  State<EnterOTPField> createState() => _EnterOTPFieldState();
}

class _EnterOTPFieldState extends State<EnterOTPField> {
  @override
  void dispose() {
    widget.pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: SizedBox(
              height: 60,
              child: Pinput(
                focusNode: widget.focusNode,
                useNativeKeyboard: true,
                controller: widget.pinController,
                length: 4,
                mainAxisAlignment: MainAxisAlignment.center,
                preFilledWidget: Text(
                  '*',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: AppColors.greyColor,
                  ),
                ),
                closeKeyboardWhenCompleted: true,
                crossAxisAlignment: CrossAxisAlignment.center,
                pinContentAlignment: Alignment.center,
                defaultPinTheme: PinTheme(
                  height: 60,
                  width: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: AppColors.formFieldbgColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: AppColors.blackColor,
                  ),
                ),
                focusedPinTheme: PinTheme(
                  height: 60,
                  width: 60,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: AppColors.formFieldbgColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: AppColors.blackColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
