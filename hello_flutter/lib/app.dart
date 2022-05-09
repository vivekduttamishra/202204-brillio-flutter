// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

//import 'screens/welcome-screen.dart';
import 'screens/items-screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'My First App',
        home: Scaffold(

          body:ItemsScreen(),

        )
      );
  }



}