// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/app-icon.dart';

class TitledScreen extends StatelessWidget {
  final String title;
  final String? message;
  final Widget? child;
  const TitledScreen({
    required this.title,
    this.message,
    this.child,
    Key? key
    
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text(title),
        actions:<Widget>[
          IconButton(
            icon:Icon(Icons.add),
            onPressed:(){},
            ),
        ],
      ),
      body: child ?? Center(
        child: Text(message??title),
      ),
    );
  }
}
