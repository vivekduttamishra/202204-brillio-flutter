

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          title: Text('My Flutter App'),
          leading: Icon(Icons.account_balance_wallet),
          actions: [
            Icon(Icons.add),
            Icon(Icons.remove),
          ],          
        ),
        body: Center(
          child: Card(
              child: Container(
                child: Text('Welcome to Flutter'), 
                padding:EdgeInsets.all(20),
                ),
              color: Colors.red.shade50,
              elevation: 13,
              
          ),
        ),
        
      );

    
  }

}