import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';

    if (resultScore <= 8) {
      resultText = 'You are awesome and inocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 12) {
      resultText = 'you are...strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ignore: prefer_const_constructors
          Text(
            'You did it !!',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 5,
          ),
          TextButton(
            onPressed: resetHandler,
            // ignore: prefer_const_constructors
            child: Text(
              'Restart Quiz!',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
