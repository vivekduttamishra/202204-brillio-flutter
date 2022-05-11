
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'screens/books-screen.dart';

class App extends StatelessWidget {

  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    
   
    return MaterialApp(
        title:"Books",
        home: BooksScreen(),
        debugShowCheckedModeBanner: false,
        theme:ThemeData(
          primarySwatch: Colors.lightGreen,
          canvasColor: Colors.lime,
          textTheme: ThemeData.light().textTheme.copyWith(
           titleLarge: TextStyle(fontSize:35),
          )
        ),

    );
  }

}