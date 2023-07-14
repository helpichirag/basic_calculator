import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final double textSize;

  // callback function

  final Function callback;
  const CalculatorButton(
      {super.key,
      required this.text,
      required this.color,
      required this.textColor,
      required this.textSize,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 70,
        height: 70,
        child: ElevatedButton(
          onPressed: () => callback(text),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(color),
              textStyle: MaterialStateProperty.all(
                  GoogleFonts.rubik(textStyle: TextStyle(fontSize: textSize))),
              shape: MaterialStateProperty.all(CircleBorder())),
        ),
      ),
    );
  }
}
