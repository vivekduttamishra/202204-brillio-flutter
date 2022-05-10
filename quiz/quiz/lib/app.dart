

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'model/quizMaster.dart';
import 'screens/question-screen.dart';
import 'screens/welcome-screen.dart';
import 'styles.dart';

class App extends StatelessWidget {
  final QuizMaster quizMaster;

  App(this.quizMaster,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {    
    return  MaterialApp(
      title: 'Quizzy',
      home: QuestionScreen(quizMaster),
      theme:ThemeData(
        primarySwatch: headerColor
      ),
      debugShowCheckedModeBanner: false,
    );
  }



}
