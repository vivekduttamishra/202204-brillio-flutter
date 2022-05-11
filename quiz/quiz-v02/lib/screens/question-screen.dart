// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:quiz/model/question.dart';
import '../model/quizMaster.dart';
import '../styles.dart';

class QuestionScreen extends StatefulWidget {
  

  final QuizMaster quizMaster;

  QuestionScreen(this.quizMaster, {Key? key}) : super(key: key){
    quizMaster.start(5);    
  }

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

  
  int questionNumber=0;
  
  void navigatePrevious(){

    if(questionNumber>0)
      setState(()=> questionNumber--);     

  }

  void navigateNext(){
    if(questionNumber<widget.quizMaster.totalQuestions-1)
      setState((){
        questionNumber++;
      });      
  }

  void handleAnswer(int index){
      widget.quizMaster.recordResponse(index);
      setState((){
        questionNumber =questionNumber ;
      }); //we need to update the UI.
      //navigateNext();
  }

  List<Widget> getAnswerButtons(){

    List<Widget> options= [];
    var question = widget.quizMaster.getQuestion(questionNumber);

    var correctAnswer= question.correctAnswerIndex;
    var givenAnswer = widget.quizMaster.quiz.answers[questionNumber];


    for(int i =0 ; i<question.answers.length;i++){
      var answer= question.answers[i];
      var index=i;
      var color = bodyColor;
      if(givenAnswer==i){ //it is the current answer that is given
          color= givenAnswer==correctAnswer? Colors.lightGreen: Colors.red.shade400;
      }

      void handler(){
          handleAnswer(index);
      }

      var button=OutlinedButton(
              onPressed: givenAnswer==-1 ? handler : null,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(color),                
              ),
              child: Text(
                answer,
                style: h2,
                textAlign:TextAlign.center,
              ),
              
            );

        options.add(button);
    }
    return options;

  }

  @override
  Widget build(BuildContext context) {
    var question= widget.quizMaster.getQuestion(questionNumber);
    var nextHandler= questionNumber< widget.quizMaster.totalQuestions-1? navigateNext:null;
    var previousHandler=questionNumber>0 ? navigatePrevious:null;
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
                  onPressed: previousHandler,
                 
                  child: Icon(Icons.arrow_back, 
                    color: previousHandler==null?Colors.transparent: bodyTextColorAlt,
                    ),
                ),
                Text('${widget.quizMaster.currentQuestion+1} of ${widget.quizMaster.totalQuestions}',
                  style: TextStyle(
                    color: bodyTextColorAlt,
                  ),
                ),
                TextButton(
                  onPressed: nextHandler,
                  child: Icon(Icons.arrow_forward,
                  color: nextHandler==null?Colors.transparent:bodyTextColorAlt,
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
