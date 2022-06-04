import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_homeworks/Homework_5/Widgets/Calculator_Buttons.dart';

class CalculatorMainPage extends StatefulWidget {
  const CalculatorMainPage({Key? key}) : super(key: key);

  @override
  State<CalculatorMainPage> createState() => _CalculatorMainPageState();
}

class _CalculatorMainPageState extends State<CalculatorMainPage> {
  late int firstNum;
  late int secondNum;
  String history = "";
  late String calculation;
  String numberHistory = "";
  late String operation;
  String textToDisplay = "";
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var maxWidth = size.width;
    var maxHeight = size.height;
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: maxWidth,
            height: maxHeight,
            decoration: BoxDecoration(color: Colors.black),
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(top:55,right: 15),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        history,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Text(
                      textToDisplay,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 100,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: maxWidth,
            height: maxHeight * (7 / 10),
            decoration: const BoxDecoration(
              color: Colors.black38,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalculatorButton("AC", Colors.grey, Colors.black,
                          numberButtonAction, 32),
                      CalculatorButton(
                          "+/-", Colors.grey, Colors.black, numberButtonAction, 32),
                      CalculatorButton(
                          "%", Colors.grey, Colors.black, numberButtonAction, 32),
                      CalculatorButton(
                          "÷", Colors.orangeAccent, Colors.white, numberButtonAction, 40),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalculatorButton(
                          "7", Colors.grey.shade800, Colors.white, numberButtonAction, 40),
                      CalculatorButton(
                          "8", Colors.grey.shade800, Colors.white, numberButtonAction, 40),
                      CalculatorButton(
                          "9", Colors.grey.shade800, Colors.white, numberButtonAction, 40),
                      CalculatorButton(
                          "x", Colors.orangeAccent, Colors.white, numberButtonAction, 40),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalculatorButton(
                          "4", Colors.grey.shade800, Colors.white, numberButtonAction, 40),
                      CalculatorButton(
                          "5", Colors.grey.shade800, Colors.white, numberButtonAction, 40),
                      CalculatorButton(
                          "6", Colors.grey.shade800, Colors.white, numberButtonAction, 40),
                      CalculatorButton(
                          "—", Colors.orangeAccent, Colors.white, numberButtonAction, 40),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 16.0, top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CalculatorButton(
                          "1", Colors.grey.shade800, Colors.white, numberButtonAction, 40),
                      CalculatorButton(
                          "2", Colors.grey.shade800, Colors.white, numberButtonAction, 40),
                      CalculatorButton(
                          "3", Colors.grey.shade800, Colors.white, numberButtonAction, 40),
                      CalculatorButton(
                          "+", Colors.orangeAccent, Colors.white, numberButtonAction, 40),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, right: 16.0, top: 10.0, bottom: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: 175,
                          height: 75,
                          child: CalculatorButton("0", Colors.grey.shade800,
                              Colors.white, numberButtonAction, 50)),
                      CalculatorButton(
                          ",", Colors.grey.shade800, Colors.white, numberButtonAction, 40),
                      CalculatorButton(
                          "=", Colors.orangeAccent, Colors.white, numberButtonAction, 40),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void numberButtonAction(String buttonName) {
    if(buttonName == "AC"){
      firstNum = 0;
      secondNum = 0;
      history = "0";
      calculation = "0";
    }
    else if(buttonName == "÷" || buttonName == "+" || buttonName == "—" || buttonName == "x" ){
      operation = buttonName;
      firstNum = int.parse(textToDisplay);
      calculation = firstNum.toString();
      isClicked = true;
    }
    else if(buttonName == "="){
      calculation = "";
      secondNum = int.parse(textToDisplay);
      isClicked = false;
      switch(operation){
        case "+":{
          calculation = (firstNum + secondNum).toString();
          history = firstNum.toString() + operation + secondNum.toString();
          numberHistory = calculation;
        }
        break;
        case "—":{
          calculation = (firstNum - secondNum).toString();
          history = firstNum.toString() + operation + secondNum.toString();
          numberHistory = calculation;
        }
        break;
        case "÷":{
          calculation = (firstNum / secondNum).toString();
          history = firstNum.toString() + operation + secondNum.toString();
          numberHistory = calculation;
        }
        break;
        case "x":{
          calculation = (firstNum * secondNum).toString();
          history = firstNum.toString() + operation + secondNum.toString();
          numberHistory = calculation;
        }
        break;

      }
    }
    else {
        if(isClicked){
          calculation = int.parse(buttonName).toString();
          isClicked = false;
        }
        else{
          calculation = int.parse(textToDisplay + buttonName).toString();
          isClicked = false;
        }

    }
    setState(() {
      textToDisplay = calculation;

    });
  }
}
