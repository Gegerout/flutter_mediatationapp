import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app/onboarding.dart';
import 'package:meditation_app/signin.dart';
import 'package:meditation_app/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const OnboardingScreen(),
      getPages: [
        GetPage(name: '/', page: () => const SignInScreen()),
        GetPage(name: "/signup", page: () => const SignUpScreen()),
        GetPage(name: "/signin", page: () => const SignInScreen())
      ],
    );
  }
}
