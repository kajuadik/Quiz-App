import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function answerQuestion;
  Quiz(
      {required this.question,
      required this.answerQuestion,
      required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Question(
          question[questionIndex]['questionText'] as String,
        ),
        ...(question[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
