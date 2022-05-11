import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import '../styles.dart';


class AnswerPanel extends StatelessWidget {
  
  final List<String> answers;
  final int correctAnswer;
  final int givenAnswer;
  final Function onAnswerSelected;

  const AnswerPanel({
        required this.answers,
        required this.correctAnswer, 
        required this.onAnswerSelected, 
        required this.givenAnswer, 
        Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.stretch,
      children: answers.mapIndexed( (index,answer){

        var color=Colors.transparent;
        if(givenAnswer==index){ //it is the current answer that is given
          color= givenAnswer==correctAnswer? Colors.lightGreen: Colors.red.shade400;
        }

      
        return OutlinedButton(
              onPressed:givenAnswer!=-1 ?null:(){
                onAnswerSelected(index);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(color),                
              ),
              child: Text(
                answer,
                style: h2,
                textAlign:TextAlign.center,
              ),
              
            );

      }).toList(),
    );
  }
}