// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quiz/model/question.dart';
import '../styles.dart';

class QuestionScreen extends StatelessWidget {

  final Question question;

  QuestionScreen(this.question, {Key? key}) : super(key: key);


  void handleAnswer(int index){
      print('You selected $index');
  }

  List<Widget> getAnswerButtons(){

    List<Widget> options= [];

    for(int i =0 ; i<question.answers.length;i++){
      var answer= question.answers[i];
      var index=i;
      var button=OutlinedButton(
              onPressed: () =>handleAnswer(index),
              child: Text(
                answer,
                style: h2,
              ),
            );

        options.add(button);
    }
    return options;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzy Question #1'),
      ),
      body: Container(
        color: bodyColor,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              question.question,
              style: h1,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
           
           ...getAnswerButtons(),
               
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: (){print('previous');},
                 
                  child: Icon(Icons.arrow_back, 
                    color: bodyTextColorAlt,
                    ),
                ),
                TextButton(
                  onPressed: (){print('next');},
                  child: Icon(Icons.arrow_forward,
                  color: bodyTextColorAlt,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
