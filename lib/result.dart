import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetPressed;

  Result({@required this.score, @required this.resetPressed});

  String get resultPhrase {
    String resultText = "Score: $score";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            onPressed: resetPressed,
            child: Text(
              ('Restart Quiz!'),
            ),
            textColor: Colors.blue[300],
          )
        ],
      ),
    );
  }
}
