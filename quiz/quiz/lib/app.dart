

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'screens/question-screen.dart';
import 'screens/welcome-screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      title: 'Quizzy',
      home: QuestionScreen(),
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        canvasColor: Colors.yellow.shade50,
        
      ) ,
    );
  }



}
