
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'screens/book-add-screen.dart';
import 'screens/book-details-screen.dart';
import 'screens/book-list-screen.dart';
import 'screens/user-login-screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
        title:"Books",
       
        debugShowCheckedModeBanner: false,
        theme:ThemeData(
          primarySwatch: Colors.green,
          primaryColor: Color(0xFF335C67),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: Theme.of(context).primaryColor, ),
          appBarTheme:AppBarTheme(
            backgroundColor:Theme.of(context).primaryColor,
            foregroundColor:Colors.white,
          ),
          canvasColor: Color(0xFFFFF7AE),          
          
          textTheme: ThemeData.light().textTheme.copyWith(
            titleLarge: TextStyle(
                  fontSize:24,
                  fontFamily:'Heading',
            ),
            titleMedium: TextStyle(
              fontSize:20,
              fontFamily:'Heading',
            ),
            
            titleSmall: TextStyle(
              fontSize:18,
              fontFamily:'Heading',
            ),
            headlineLarge: TextStyle(
              fontSize:24,
              fontFamily:'Poppins',
            ),
            headlineSmall: TextStyle(
              fontSize:18,
              fontFamily:'Poppins',
              fontStyle: FontStyle.italic,
            ),
            bodyLarge: TextStyle(
              fontFamily: 'Poppins',
              fontSize:18,
            ),
            bodyMedium: TextStyle(
              fontFamily: 'Poppins',
              fontSize:16,
              
            ),
            bodySmall: TextStyle(
              fontFamily: 'Poppins',
              fontSize:14,
            ),
            labelLarge:TextStyle(
                fontFamily: 'Poppins',
                fontSize:16,
            ),
            labelMedium: TextStyle(
              fontFamily: 'Poppins',
              fontSize:16,
              
            )
          )
        ),

        routes: {
          BookListScreen.id: (context)=> BookListScreen(),
          BookDetailsScreen.id:(context)=>BookDetailsScreen(),
          BookAddScreen.id: (context)=>BookAddScreen(),
          UserLoginScreen.id: (context)=>UserLoginScreen(),
        },
        
    );
  }
}