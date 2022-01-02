import "package:flutter/material.dart";
import 'package:flutter_basics/answer.dart';
import 'package:flutter_basics/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz({
    Key? key,
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            questionText: (questions[questionIndex]["questionText"] as String)),
        ...(questions[questionIndex]["answers"] as List <Map<String, Object>>)
            .map((answer) {
          return Answer(
              answerText: (answer["text"] as String),
              selectHandler: () => answerQuestion(answer["score"]));
        }).toList(),
      ],
    );
  }
}
