// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../styles.dart';

class QuestionScreen extends StatelessWidget {
  QuestionScreen({Key? key}) : super(key: key);

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
              'Who first called Gandhiji as the father of the nation?',
              style: h1,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            OutlinedButton(
              onPressed: () {
                print('You selected Nehru');
              },
              child: Text(
                "Nehru",
                style: h2,
              ),
            ),
            OutlinedButton(
              onPressed: () {
                print('You selected Bose');
              },
              child: Text(
                "Bose",
                style: h2,
              ),
            ),
            OutlinedButton(
              onPressed: () {
                print('You selected Patel');
              },
              child: Text(
                "Sardard Ballav Bhai Patel",
                style: h2,
              ),
            ),
            OutlinedButton(
              onPressed: () {
                print('You selected Tagore');
              },
              child: Text(
                "Rabindra Nath Tagore",
                style: TextStyle(
                  fontFamily: 'PatricHand',
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            ),
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
