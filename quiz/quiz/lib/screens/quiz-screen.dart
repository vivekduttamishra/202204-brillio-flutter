// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import '../widgets/navigation-panel.dart';
import '../model/question.dart';
import '../model/quizMaster.dart';
import '../styles.dart';
import '../widgets/question-panel.dart';

class QuizScreen extends StatefulWidget {
  
  final QuizMaster quizMaster;

  QuizScreen(this.quizMaster, {Key? key}) : super(key: key){
    quizMaster.start(5);    
  }

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  
  int questionNumber=0;
 

  void handleNavigate(int delta){
    var result= questionNumber+delta;
    if(result>=0 && result<widget.quizMaster.totalQuestions){
      setState((){
        questionNumber=result;
      });
    }
  }

  void handleAnswer(int index){
      widget.quizMaster.recordResponse(index);
      setState((){
        questionNumber =questionNumber ;
      }); //we need to update the UI.
      //navigateNext();
  }


  @override
  Widget build(BuildContext context) {
    var question= widget.quizMaster.getQuestion(questionNumber);
    var totalQuestions= widget.quizMaster.totalQuestions;
    var givenAnswer=widget.quizMaster.quiz.answers[questionNumber];

    return Scaffold(
      appBar: AppBar(
        title: Text('Quizzy '),
      ),
      body: Container(
        color: bodyColor,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [           
            QuestionPanel(
                      question:question,
                      givenAnswer:givenAnswer,
                      onAnswerSelected:handleAnswer,
            ),
            Spacer(),
            NavigationPanel(
              currentQuestion:questionNumber+1, 
              totalQuestions:totalQuestions,
              onNavigate:handleNavigate,
            ),
           ],
        ),
      ),
    );
  }
}
