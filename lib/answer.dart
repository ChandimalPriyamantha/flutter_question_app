import 'package:flutter/material.dart';

class Answwer extends StatelessWidget {
  final void Function() selectHadel;

  Answwer(this.selectHadel);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Answer 1'),
          onPressed: selectHadel),
    );
  }
}
