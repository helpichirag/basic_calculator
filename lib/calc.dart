import 'package:calc/widgets/calc_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  late int firstNum;
  late int seccondNum;
  late String history = "";
  late String textToDisplay = "";
  late String res;
  late String operation;

  void btnONclick(String btnVal) {
    if (btnVal == "C") {
      textToDisplay = "";
      firstNum = 0;
      seccondNum = 0;
      res = "";
    } else if (btnVal == "AC") {
      textToDisplay = "";
      firstNum = 0;
      seccondNum = 0;
      res = "";
      history = "";
    } else if (btnVal == "+/-") {
      if (textToDisplay[0] != "-") {
        res = "-$textToDisplay";
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnVal == "<") {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == "+" ||
        btnVal == "-" ||
        btnVal == "X" ||
        btnVal == "/") {
      firstNum = int.parse(textToDisplay);
      res = "";
      operation = btnVal;
    } else if (btnVal == "=") {
      seccondNum = int.parse(textToDisplay);
      if (operation == "+") {
        res = (firstNum + seccondNum).toString();
        history =
            firstNum.toString() + operation.toString() + seccondNum.toString();
      }
      if (operation == "-") {
        res = (firstNum - seccondNum).toString();
        history =
            firstNum.toString() + operation.toString() + seccondNum.toString();
      }
      if (operation == "X") {
        res = (firstNum * seccondNum).toString();
        history =
            firstNum.toString() + operation.toString() + seccondNum.toString();
      }
      if (operation == "/") {
        res = (firstNum / seccondNum).toString();
        history =
            firstNum.toString() + operation.toString() + seccondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }

    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: const Alignment(1, 1),
            child: Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Text(
                history,
                style: GoogleFonts.rubik(
                  fontSize: 30,
                  color: Color.fromARGB(255, 62, 0, 207),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            alignment: const Alignment(1, 1),
            child: Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Text(
                textToDisplay,
                style: GoogleFonts.rubik(
                  fontSize: 46,
                  color: Color.fromARGB(255, 62, 0, 207),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                text: "AC",
                color: Colors.grey,
                textColor: Colors.white,
                textSize: 16,
                callback: btnONclick,
              ),
              CalculatorButton(
                text: "C",
                color: Colors.grey,
                textColor: Colors.white,
                textSize: 24,
                callback: btnONclick,
              ),
              CalculatorButton(
                text: "<",
                color: Colors.grey,
                textColor: Colors.white,
                textSize: 23,
                callback: btnONclick,
              ),
              CalculatorButton(
                text: "+",
                textColor: Colors.white,
                color: Color.fromARGB(255, 62, 0, 207),
                textSize: 23,
                callback: btnONclick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                text: "9",
                color: Colors.orange,
                textColor: Colors.black,
                textSize: 24,
                callback: btnONclick,
              ),
              CalculatorButton(
                text: "8",
                color: Colors.orange,
                textColor: Colors.black,
                textSize: 24,
                callback: btnONclick,
              ),
              CalculatorButton(
                text: "7",
                color: Colors.orange,
                textColor: Colors.black,
                textSize: 24,
                callback: btnONclick,
              ),
              CalculatorButton(
                text: "X",
                color: Color.fromARGB(255, 62, 0, 207),
                textColor: Colors.white,
                textSize: 24,
                callback: btnONclick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                text: "6",
                color: Colors.orange,
                textColor: Colors.black,
                textSize: 24,
                callback: btnONclick,
              ),
              CalculatorButton(
                text: "5",
                color: Colors.orange,
                textColor: Colors.black,
                textSize: 24,
                callback: btnONclick,
              ),
              CalculatorButton(
                text: "4",
                color: Colors.orange,
                textColor: Colors.black,
                textSize: 24,
                callback: btnONclick,
              ),
              CalculatorButton(
                text: "-",
                color: Color.fromARGB(255, 62, 0, 207),
                textColor: Colors.white,
                textSize: 28,
                callback: btnONclick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                text: "3",
                color: Colors.orange,
                textColor: Colors.black,
                textSize: 24,
                callback: btnONclick,
              ),
              CalculatorButton(
                text: "3",
                color: Colors.orange,
                textColor: Colors.black,
                textSize: 24,
                callback: btnONclick,
              ),
              CalculatorButton(
                text: "1",
                color: Colors.orange,
                textColor: Colors.black,
                textSize: 24,
                callback: btnONclick,
              ),
              CalculatorButton(
                text: "/",
                color: Color.fromARGB(255, 62, 0, 207),
                textColor: Colors.white,
                textSize: 24,
                callback: btnONclick,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalculatorButton(
                text: "+/-",
                color: Colors.orange,
                textColor: Colors.black,
                textSize: 20,
                callback: btnONclick,
              ),
              CalculatorButton(
                text: "0",
                color: Colors.orange,
                textColor: Colors.black,
                textSize: 20,
                callback: btnONclick,
              ),
              CalculatorButton(
                text: "00",
                color: Colors.orange,
                textColor: Colors.black,
                textSize: 20,
                callback: btnONclick,
              ),
              CalculatorButton(
                text: "=",
                color: Color.fromARGB(255, 62, 0, 207),
                textColor: Colors.white,
                textSize: 24,
                callback: btnONclick,
              ),
            ],
          )
        ],
      ),
    );
  }
}
