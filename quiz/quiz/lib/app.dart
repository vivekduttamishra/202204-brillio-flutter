

import 'package:flutter/material.dart';
import 'screens/welcome-screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      title: 'Quizzy',
      home: WelcomeScreen(),
    );
  }



}