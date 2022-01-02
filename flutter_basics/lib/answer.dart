import 'dart:ffi';

import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final String answerText;
  final Function selectHandler;

  const Answer(
      {Key? key, required this.answerText, required this.selectHandler})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: () => selectHandler(),
      ),
    );
  }
}
