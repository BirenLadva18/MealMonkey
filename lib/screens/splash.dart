import 'package:flutter/material.dart';
import 'package:meal_monkey/screens/account_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AccountScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        foregroundDecoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Background_Icons.png'),
          ),
        ),
        child: Image.asset('assets/Logo.png'),
      ),
    );
  }
}
