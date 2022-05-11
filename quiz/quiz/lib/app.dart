// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'model/quizMaster.dart';
import 'screens/quiz-screen.dart';
import 'screens/welcome-screen.dart';
import 'screens/result-screen.dart';
import 'styles.dart';

class App extends StatefulWidget {
  final QuizMaster quizMaster;
  late Map<String, Function> screens;



  App(this.quizMaster, {Key? key}) : super(key: key) {
    screens = {
      //map
      "home": (gotoScreen) => WelcomeScreen(gotoScreen:gotoScreen),
      "quiz": (gotoScreen) => QuizScreen(quizMaster, gotoScreen:gotoScreen),
      "result": (gotoScreen) => ResultScreen(quizMaster,gotoScreen:gotoScreen),
    };
  }

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  String currentScreen="home";

  void gotoScreen(screeName){
    setState((){
      currentScreen = screeName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizzy',
      home: widget.screens[currentScreen]!(gotoScreen),
      theme: ThemeData(primarySwatch: headerColor),
      debugShowCheckedModeBanner: false,
    );
  }
}
