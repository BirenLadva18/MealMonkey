import 'package:flutter/material.dart';
import 'package:meal_monkey/config/theme.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/widgets/button_with_text.dart';
import 'package:meal_monkey/widgets/text_form_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30),
                      Text(
                        'Signup',
                        style: AppTheme.headerStyle,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Add your details to sign up',
                        textAlign: TextAlign.center,
                        style: AppTheme.subHeaderStyle,
                      ),
                      const SizedBox(height: 20),
                      CustomTextFormField(
                        hintText: 'Name',
                        focusNode: focusNode,
                        onTap: () {},
                      ),
                      const SizedBox(height: 20),
                      CustomTextFormField(
                        hintText: 'Email',
                        focusNode: focusNode,
                        onTap: () {},
                      ),
                      const SizedBox(height: 20),
                      CustomTextFormField(
                        hintText: 'Mobile No',
                        focusNode: focusNode,
                        onTap: () {},
                      ),
                      const SizedBox(height: 20),
                      CustomTextFormField(
                        hintText: 'Address',
                        focusNode: focusNode,
                        onTap: () {},
                      ),
                      const SizedBox(height: 20),
                      CustomTextFormField(
                        hintText: 'Password',
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
                        buttonText: 'Sign Up',
                        buttonOnPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account ?',
                      textAlign: TextAlign.center,
                      style: AppTheme.subHeaderStyle,
                    ),
                    TextButton(
                      child: Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: AppTheme.orangeTextStyle,
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/login');
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
