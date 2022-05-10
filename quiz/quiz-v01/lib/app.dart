

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'model/quizMaster.dart';
import 'screens/question-screen.dart';
import 'screens/welcome-screen.dart';
import 'styles.dart';

class App extends StatelessWidget {
  final QuizMaster quizMaster;

  App(this.quizMaster,{Key? key}) : super(key: key){
    quizMaster.start(5);
  }

  @override
  Widget build(BuildContext context) {
    
    var question= quizMaster.getNextQuestion();

    return  MaterialApp(
      title: 'Quizzy',
      home: QuestionScreen(question),
      theme:ThemeData(
        primarySwatch: headerColor
      ),
      debugShowCheckedModeBanner: false,
    );
  }



}
