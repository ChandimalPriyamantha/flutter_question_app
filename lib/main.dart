import 'package:flutter/material.dart';
import 'package:question_app/quiz.dart';
import 'question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questioText': 'What\'s your favorite color?',
      'answer': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questioText': 'What\'s your favorite animal?',
      'answer': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questioText': 'Who\'s your favorite instructor?',
      'answer': ['Sithumi', 'Chamara', 'Vijekon', 'Adikari'],
    }
  ];

  var _questionIndex = 0;
  void _answeQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answeQuestion: _answeQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
