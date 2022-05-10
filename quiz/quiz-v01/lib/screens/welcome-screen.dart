

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../styles.dart';

class WelcomeScreen extends StatelessWidget {


  const WelcomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
              
              body: Container(
                color: bodyColor,
                child: Column(
                  
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/quiz_logo.png'),
                    Text('Welcome to',
                      style: h1,
                    ),
                    Text('Quizzy',
                      style: appTitleTextStyle,
                    ),

                    ElevatedButton(
                      onPressed: (){
                        print('Let us Start');
                      },
                      
                      child: Text('Start'),
                    ),

                  ],
                ),
              ), 
            );
  }



}