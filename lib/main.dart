import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen!');
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
            Text(question.elementAt(0)),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            RaisedButton(
                child: Text('Answer 2'), onPressed: () => print('Chosen 2')),
            RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('Chosen 3');
                }),
          ],
        ),
      ),
    );
  }
}
