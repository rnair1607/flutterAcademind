import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final Function longPressHandler;
  final String answerText;

  Answer({
    this.selectHandler,
    this.longPressHandler,
    this.answerText,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: RaisedButton(
        color: Colors.blue[100],
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
        onLongPress: longPressHandler,
      ),
    );
  }
}
