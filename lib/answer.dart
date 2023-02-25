import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String _answerText;
  Answer(this.selectHandler, this._answerText);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      child: ElevatedButton(
        style: ButtonStyle(
            foregroundColor:
                MaterialStateProperty.all(Color.fromARGB(255, 252, 249, 251)),
            backgroundColor:
                MaterialStateProperty.all(Color.fromARGB(255, 253, 90, 190))),
        child: Text(_answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
