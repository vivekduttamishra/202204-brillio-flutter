

import 'package:flutter/material.dart';

import '../model/question.dart';
import '../styles.dart';
import 'answer-panel.dart';

class QuestionPanel extends StatelessWidget {
  final Question question;
  final int givenAnswer;
  final Function onAnswerSelected;
  const QuestionPanel({
                      required this.question, 
                      required this.givenAnswer, 
                      required this.onAnswerSelected, 
                      Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(
              question.question,
              style: h1,
              textAlign: TextAlign.center,
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 40,
            ),
            AnswerPanel(
              answers: question.answers,
              correctAnswer: question.correctAnswerIndex,
              givenAnswer: givenAnswer,
              onAnswerSelected:onAnswerSelected,
            
            ),
      ]
    );
  }
}