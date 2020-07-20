import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Question(questions[questionIndex]['questionText']),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            return Answer(
              answerText: answer['text'],
              selectHandler: () => answerQuestion(answer['score']),
              longPressHandler: () => {print(answer['text'])},
            );
          }).toList()
        ],
      ),
    );
  }
}
