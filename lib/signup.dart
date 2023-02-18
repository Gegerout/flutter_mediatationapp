import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF253334),
      body: Center(
        child: Text(
          "Тут будет регистрация",
          style: TextStyle(
              fontFamily: "Alegreya",
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
