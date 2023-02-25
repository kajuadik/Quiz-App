import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;
  Question(this._questionText);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(_questionText,
            style: TextStyle(fontSize: 25), textAlign: TextAlign.center));
  }
}
