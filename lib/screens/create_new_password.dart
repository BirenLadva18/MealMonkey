import 'package:flutter/material.dart';
import 'package:meal_monkey/config/theme.dart';
import 'package:meal_monkey/widgets/button_with_text.dart';
import 'package:meal_monkey/widgets/text_form_field.dart';

class CreatenewPassword extends StatefulWidget {
  const CreatenewPassword({super.key});

  @override
  State<CreatenewPassword> createState() => _CreatenewPasswordState();
}

class _CreatenewPasswordState extends State<CreatenewPassword> {
  final focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          width: double.infinity,
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30),
                    Text(
                      'New Password',
                      style: AppTheme.headerStyle,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Please enter your email to receive a\nlink to  create a new password via email',
                      textAlign: TextAlign.center,
                      style: AppTheme.subHeaderStyle,
                    ),
                    const SizedBox(height: 40),
                    CustomTextFormField(
                      hintText: 'New Password',
                      focusNode: focusNode,
                      onTap: () {},
                    ),
                    const SizedBox(height: 20),
                    CustomTextFormField(
                      hintText: 'Confirm Password',
                      focusNode: focusNode,
                      onTap: () {},
                    ),
                    const SizedBox(height: 20),
                    ButtonWithText(
                      buttonText: 'Next',
                      buttonOnPressed: () {
                        Navigator.pushNamed(context, '/onBoarding');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
