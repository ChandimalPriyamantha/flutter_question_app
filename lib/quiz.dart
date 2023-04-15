import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[_questionIndex]['questioText'] as String,
        ),
        ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
          return Answer(_answeQuestion, answer);
        }).toList()
      ],
    );
  }
}
