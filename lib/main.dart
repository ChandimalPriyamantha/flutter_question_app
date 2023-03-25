import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answeQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'What\'s your favorite color?',
      'What\' s your favorite animal'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(question.elementAt(questionIndex)),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answeQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answeQuestion,
            ),
            RaisedButton(child: Text('Answer 3'), onPressed: answeQuestion),
          ],
        ),
      ),
    );
  }
}
