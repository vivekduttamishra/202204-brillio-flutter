
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BooksScreen extends StatelessWidget {

  const BooksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    
    return Scaffold(
      appBar:AppBar(
        title:Text('Great Books'),
      ),
      body:Center(
        child:Text('A List of our Books'),
      ),
    );
  }

}