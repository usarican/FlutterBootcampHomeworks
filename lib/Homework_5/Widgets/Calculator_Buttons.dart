import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  String buttonName;
  Color backgroundColor, textColor;
  double textSize;
  Function function;

  CalculatorButton(
      this.buttonName,
      this.backgroundColor,
      this.textColor,
      this.function,
      this.textSize
      );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      height: 75,
      child: ElevatedButton(
        onPressed: () => function(buttonName),
        style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(backgroundColor)),
        child: Text(
          buttonName,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w400,
            fontSize: textSize,
          ),
        ),
      ),
    );
  }
}
