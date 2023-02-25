// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppstate();
  }
}

class _MyAppstate extends State<MyApp> {
  final _question = [
    {
      'questionText': 'what\'s your favourite colour?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 15},
        {'text': 'White', 'score': 5},
      ],
    },
    {
      'questionText': 'what\'s your favourite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 5},
        {'text': 'Rabbit', 'score': 20},
      ],
    },
    {
      'questionText': 'what\'s your favourite subject?',
      'answers': [
        {'text': 'AI', 'score': 20},
        {'text': 'Java', 'score': 5},
        {'text': 'C++', 'score': 10},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _question.length) {
      print('We have more questions!');
    } else {
      print('No more question!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
          backgroundColor: Color.fromARGB(255, 66, 182, 239),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                question: _question,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
