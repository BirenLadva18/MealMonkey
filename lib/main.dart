import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meal_monkey/screens/create_new_password.dart';
import 'package:meal_monkey/screens/login_screen.dart';
import 'package:meal_monkey/screens/on_boarding.dart';
import 'package:meal_monkey/screens/reset_password_phone.dart';
import 'package:meal_monkey/screens/signup_screen.dart';

import 'screens/reset_password_email.dart';
import 'screens/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/ResetPasswordWithEmail': (context) => const ResetPasswordWithEmail(),
        '/ResetPasswordWithPhone': (context) => const ResetPasswordWithPhone(),
        '/createNewPassword': (context) => const CreatenewPassword(),
        '/onBoarding': (context) => OnBoarding(),
      },
    );
  }
}
