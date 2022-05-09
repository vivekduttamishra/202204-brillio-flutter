

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {


  const WelcomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
              body: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/quiz_logo.png'),
                  Text('Welcome to',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize:40,
                    ),
                  ),
                  Text('Quizzy',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize:60,
                      fontFamily:'courier',
                      fontWeight:FontWeight.w700,
                    ),
                  )
                ],
              ), 
            );
  }



}