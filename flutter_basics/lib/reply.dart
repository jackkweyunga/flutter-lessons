import "package:flutter/material.dart";

class Reply extends StatelessWidget {
  final Function resetQuiz;
  final int resultScore;

  const Reply({Key? key, required this.resetQuiz, required this.resultScore})
      : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              child: Text(
                resultPhrase,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(
              onPressed: () => resetQuiz(),
              child: const Text(
                "reset quiz",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      );
  }
}
