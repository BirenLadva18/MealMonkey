import 'package:flutter/material.dart';
import 'package:meal_monkey/config/theme.dart';
import 'package:meal_monkey/constants/colors.dart';
import 'package:meal_monkey/widgets/button_outlined.dart';

import '../widgets/button_with_text.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Container(
        foregroundDecoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Background_Icons.png'),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/Logo.png'),
              const SizedBox(height: 20),
              Text(
                'Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep',
                textAlign: TextAlign.center,
                style: AppTheme.subHeaderStyle,
              ),
              const SizedBox(height: 20),
              ButtonWithText(
                buttonText: 'Login',
                buttonOnPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
              const SizedBox(height: 20),
              ButtonOutlined(
                buttonText: 'Create Account',
                buttonOnPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
