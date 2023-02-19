import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: Image.asset("assets/logo.png",),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 32),
                  child: Text(
                    "Привет",
                    style: TextStyle(fontSize: 34, color: Colors.white, fontFamily: "Alegreya", fontWeight: FontWeight.w700),
                  ),
                ),
                const Text(
                  "Наслаждайся отборочными.\nБудь внимателен.\nДелай хорошо.",
                  style: TextStyle(fontFamily: "Alegreya", color: Colors.white, fontSize: 20), textAlign: TextAlign.center,
                ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: InkWell(
                onTap: () => Get.toNamed("/signin"),
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.67,
                        height: MediaQuery.of(context).size.height * 0.07,
                        decoration: BoxDecoration(
                          color: const Color(0xFF7C9A92),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Text(
                          "Войти в аккаунт",
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
          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: InkWell(
              child: Column(
                children: const [
                  Text(
                  "Еще нет аккаунта? Зарегистрируйтесь",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Alegreya",
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.white,
                  ),
                ),
                ]
              ),
            ),)
              ],
            ),
          ),
    ),
    );
  }
}
