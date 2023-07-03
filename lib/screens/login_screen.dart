import 'package:flutter/material.dart';
import 'package:meal_monkey/config/theme.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/widgets/button_with_icon.dart';
import 'package:meal_monkey/widgets/button_with_text.dart';
import 'package:meal_monkey/widgets/text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                        'Login',
                        style: AppTheme.headerStyle,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Add your details to login',
                        textAlign: TextAlign.center,
                        style: AppTheme.subHeaderStyle,
                      ),
                      const SizedBox(height: 20),
                      CustomTextFormField(
                        hintText: 'Your Email',
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
                      ButtonWithText(
                        buttonText: 'Login',
                        buttonOnPressed: () {},
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, '/ResetPasswordWithEmail');
                        },
                        child: Text(
                          'Forgot your password ?',
                          textAlign: TextAlign.center,
                          style: AppTheme.subHeaderStyle,
                        ),
                      ),
                      const SizedBox(height: 40),
                      Text(
                        'or Login With',
                        textAlign: TextAlign.center,
                        style: AppTheme.subHeaderStyle,
                      ),
                      const SizedBox(height: 20),
                      ButtonWithIconAndText(
                        buttonText: 'Login with Facebook',
                        buttonOnPressed: () {},
                        buttonColor: AppColors.blueColor,
                        buttonIcon: Icons.facebook,
                      ),
                      const SizedBox(height: 20),
                      ButtonWithIconAndText(
                        buttonText: 'Login with Google',
                        buttonOnPressed: () {},
                        buttonColor: AppColors.redColor,
                        buttonIcon: Icons.plus_one,
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
                      'Don\'t have an account ?',
                      textAlign: TextAlign.center,
                      style: AppTheme.subHeaderStyle,
                    ),
                    TextButton(
                      child: Text(
                        'Signup',
                        textAlign: TextAlign.center,
                        style: AppTheme.orangeTextStyle,
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/signup');
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
