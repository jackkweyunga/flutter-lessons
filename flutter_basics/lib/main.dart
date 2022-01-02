// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // my questions
    var allQuestions = [
      "What is your favourite color?",
      "What is you the color pf your teeth?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Basics"),
        ),
        body: Column(
          children: () {
            List<Widget> questions = [];
            for (int i = 0; i < allQuestions.length; i++) {
              questions.add(
                RaisedButton(
                  child: Text(allQuestions[i]),
                  onPressed: null),
              );
            }
            return questions;
          }(),
        ),
      ),
    );
  }
}
