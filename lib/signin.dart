import 'package:flutter/material.dart';
import 'package:meditation_app/widgets/buttons.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF253334),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 20),
                child: Image.asset(
                  "assets/logo.png",
                  height: 60,
                  width: 60,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 20),
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      fontFamily: "Alegreya",
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Center(
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 30, right: 30, top: 60, bottom: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 30, right: 30, top: 20, bottom: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          hintText: "Пароль",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: GreenButton(
                            width: 0.85, height: 0.09, text: "Sign in")),
                    Padding(
                        padding: EdgeInsets.all(30),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: BasicTextButton(text: "Register"),
                        )
                    ),
                    GreenButton(width: 0.85, height: 0.09, text: "Профиль")
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
