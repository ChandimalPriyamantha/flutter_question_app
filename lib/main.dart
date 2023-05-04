import 'package:flutter/material.dart';
import 'package:question_app/quiz.dart';
import 'package:question_app/result.dart';
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
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 3},
        {'text': 'Green', 'score': 1},
      ],
    },
    {
      'questioText': 'What\'s your favorite animal?',
      'answer': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Fish', 'score': 5},
        {'text': 'Deer', 'score': 3},
        {'text': 'Elephant', 'score': 1},
      ],
    },
    {
      'questioText': 'Who\'s your favorite instructor?',
      'answer': [
        {'text': 'Chamara', 'score': 10},
        {'text': 'Nuwan', 'score': 5},
        {'text': 'Subash', 'score': 3},
        {'text': 'Malsha', 'score': 1},
      ],
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {});
    _questionIndex = 0;
    _totalScore = 0;
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
            title: Text('Quiz App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(_questions, _answerQuestion, _questionIndex)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
