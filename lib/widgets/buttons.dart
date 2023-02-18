import 'package:flutter/material.dart';

class GreenButton extends StatelessWidget {
  const GreenButton({Key? key, required this.width, required this.height, required this.text}) : super(key: key);

  final double width;
  final double height;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * width,
          height: MediaQuery.of(context).size.height * height,
          decoration: BoxDecoration(
              color: const Color(0xFF7C9A92),
              borderRadius: BorderRadius.circular(10)
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontFamily: "Alegreya",
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
      );
  }
}

class BasicTextButton extends StatelessWidget {
  const BasicTextButton({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
                text,
                style: const TextStyle(
                  fontFamily: "Alegreya",
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
      );
  }
}

