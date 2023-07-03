import 'package:flutter/material.dart';
import 'package:meal_monkey/config/theme.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/widgets/button_with_text.dart';
import 'package:meal_monkey/widgets/otp_field.dart';

class ResetPasswordWithPhone extends StatefulWidget {
  const ResetPasswordWithPhone({super.key});

  @override
  State<ResetPasswordWithPhone> createState() => _ResetPasswordWithPhoneState();
}

class _ResetPasswordWithPhoneState extends State<ResetPasswordWithPhone> {
  TextEditingController otpController = TextEditingController();

  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                Text(
                  'We have sent an OTP to \nyour mobile',
                  textAlign: TextAlign.center,
                  style: AppTheme.headerStyle,
                ),
                const SizedBox(height: 10),
                Text(
                  'Please check your mobile number 071*****12\ncontinue to reset your password',
                  textAlign: TextAlign.center,
                  style: AppTheme.subHeaderStyle,
                ),
                const SizedBox(height: 50),
                EnterOTPField(
                  pinController: otpController,
                  categoryWidth: double.infinity,
                  focusNode: focusNode,
                ),
                const SizedBox(height: 30),
                ButtonWithText(
                  buttonText: 'Next',
                  buttonOnPressed: () {
                    focusNode.unfocus();
                    Navigator.pushNamed(context, '/createNewPassword');
                  },
                ),
                const SizedBox(height: 30),
                Wrap(
                  children: [
                    Text(
                      'Didn\'t Receive ?  ',
                      textAlign: TextAlign.center,
                      style: AppTheme.subHeaderStyle,
                    ),
                    InkWell(
                      child: Text(
                        'Click Here',
                        textAlign: TextAlign.center,
                        style: AppTheme.orangeTextStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
