

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../styles.dart';

class NavigationPanel extends StatelessWidget {
  final int currentQuestion;
  final int totalQuestions;
  final Function onNavigate;
  const NavigationPanel({required this.onNavigate, required this.currentQuestion, required this.totalQuestions,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var nextHandler= currentQuestion==totalQuestions?null:(){onNavigate(1);};
    var previousHandler=currentQuestion==1?null:()=>onNavigate(-1);
    
    return   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: previousHandler,  //previousHandler,
                 
                  child: Icon(Icons.arrow_back, 
                  color: previousHandler==null?Colors.transparent: bodyTextColorAlt,
                  ),
                ),
                Text('$currentQuestion of $totalQuestions',
                  style: TextStyle(
                    color: bodyTextColorAlt,
                  ),
                ),
                TextButton(
                  onPressed:nextHandler,
                  child: Icon(Icons.arrow_forward,
                  color: nextHandler==null?Colors.transparent:bodyTextColorAlt,
                  ),
                ),
              ],
            );         
  }



}