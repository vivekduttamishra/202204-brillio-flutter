// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../model/quizMaster.dart';
import '../styles.dart';

class ResultScreen extends StatelessWidget {
  final QuizMaster quizMaster;
  final Function gotoScreen;

  const ResultScreen(this.quizMaster, {required this.gotoScreen, Key? key})
      : super(key: key);

  getInfoRow(label, value) {
    return Row(
      children: [
        Text(
          '$label:',
          style: h2,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          '$value',
          style: h2,
        ),
      ],
    );
  }

  generateQuestionWiseReport() {
    var quiz = quizMaster.quiz;
    List<Widget> result = [];

    for (int i = 0; i < quiz.questions.length; i++) {
      var question =quiz.questions[i];
      var correctAnswer=question.answers[question.correctAnswerIndex];
      var givenAnswerIndex= quiz.answers[i];
      var givenAnswer= givenAnswerIndex==-1?"None":question.answers[givenAnswerIndex];
      var correctAnswerIndex= question.correctAnswerIndex;

      String message="";

      if(correctAnswerIndex==givenAnswerIndex)
          message='You correctly answered: ${correctAnswer}';
      else if (givenAnswerIndex==-1)
        message='You didn nott answer. Correct answer is $correctAnswer';
      else
        message='You said $givenAnswer. Correct answer is $correctAnswer';
        

      var column = Container(
        margin:EdgeInsets.all(10),
        child: Card(
          child: Container(
            padding:EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${i + 1}. ${quiz.questions[i].question}', style:h2,),
                SizedBox(height:10),
                Text(message),
              ],
            ),
          ),
        ),
      );

      result.add(column);
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.summarize),
        title: Text('Quiz Result'),
        actions: [
          IconButton(
            onPressed: () {
              gotoScreen("home");
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: Container(
          color: bodyColor,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                'Result',
                style: h1,
              ),
              getInfoRow("Total Questions", quizMaster.totalQuestions),
              getInfoRow("Total Answered", quizMaster.totalAnswered),
              getInfoRow(
                  "Total Correct answers", quizMaster.totalCorrectAnswer),
              Text(
                'Details',
                style: h1,
              ),

              Expanded(
                child: ListView(
                  children: generateQuestionWiseReport(),
                ),
              ),

              
            ],
          )),
    );
  }
}
