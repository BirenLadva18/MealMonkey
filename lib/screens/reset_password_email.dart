import 'package:flutter/material.dart';
import 'package:meal_monkey/config/theme.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/widgets/button_with_text.dart';
import 'package:meal_monkey/widgets/text_form_field.dart';

class ResetPasswordWithEmail extends StatefulWidget {
  const ResetPasswordWithEmail({super.key});

  @override
  State<ResetPasswordWithEmail> createState() => _ResetPasswordWithEmailState();
}

class _ResetPasswordWithEmailState extends State<ResetPasswordWithEmail> {
  final focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    focusNode.unfocus();
  }

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
                  'Reset Password',
                  textAlign: TextAlign.center,
                  style: AppTheme.headerStyle,
                ),
                const SizedBox(height: 10),
                Text(
                  'Please enter your email to receive a\nlink to create a new password via email',
                  textAlign: TextAlign.center,
                  style: AppTheme.subHeaderStyle,
                ),
                const SizedBox(height: 50),
                CustomTextFormField(
                  hintText: 'Email',
                  focusNode: focusNode,
                  onTap: () {},
                ),
                const SizedBox(height: 20),
                ButtonWithText(
                  buttonText: 'Send',
                  buttonOnPressed: () {},
                ),
                const SizedBox(height: 40),
                Wrap(
                  children: [
                    Text(
                      'Reset with Mobile No. ?  ',
                      textAlign: TextAlign.center,
                      style: AppTheme.subHeaderStyle,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/ResetPasswordWithPhone');
                      },
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
