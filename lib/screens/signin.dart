import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:meditation_app/bloc/auth_bloc.dart';
import 'package:meditation_app/widgets/buttons.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = context.select((AuthBloc bloc) => bloc.state.user);
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

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
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 60, bottom: 20),
                      child: TextField(
                        controller: _emailController,
                        decoration: const InputDecoration(
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
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 20, bottom: 20),
                      child: TextField(
                        controller: _passwordController,
                        decoration: const InputDecoration(
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
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: InkWell(
                          onTap: () {
                            context.read<AuthBloc>().add(AuthUserEvent(_emailController.text, _passwordController.text));
                            if (user?.id != null) {
                              print("Good");
                            }
                            else {
                              print("Bad");
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.85,
                            height: MediaQuery.of(context).size.height * 0.09,
                            decoration: BoxDecoration(
                                color: const Color(0xFF7C9A92),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: const Text(
                              "Sing in",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Alegreya",
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ),
                    ),
                    const Padding(
                        padding: EdgeInsets.all(30),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: BasicTextButton(text: "Register"),
                        )
                    ),
                    const GreenButton(width: 0.85, height: 0.09, text: "Профиль"),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
