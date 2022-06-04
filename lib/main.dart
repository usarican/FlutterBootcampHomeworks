import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_homeworks/Homework_3/FoodOrder.dart';
import 'package:flutter_bootcamp_homeworks/Homework_4/Transition_Main.dart';
import 'package:flutter_bootcamp_homeworks/Homework_5/Calculator_Main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FoodOrder(),
    );
  }
}

