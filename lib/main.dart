import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'What\'s your favorite career?',
      'What\'s your degree program?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is not my first App"),
        ),
        body: Column(
          children: [
            Question(question[_questionIndex]),
            Answwer(_answerQuestion),
            Answwer(_answerQuestion),
            Answwer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
