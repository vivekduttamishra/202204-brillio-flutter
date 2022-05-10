// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'app.dart';
import 'model/question.dart';
import 'model/quizMaster.dart';

void main() {


  final quizMaster= QuizMaster([

    Question("India won its independence in year",["1991","1901","1947","1950"],2),
    Question("First war of Indepence happened in year",["1901","1857","1942","1600"],1),
  ]
  );



  runApp(App(quizMaster));
}