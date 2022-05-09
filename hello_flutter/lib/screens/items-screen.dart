// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../widgets/app-bar.dart';
import '../widgets/box.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({Key? key}) : super(key: key);

  getFiveStar(){
    return [
          Box(margin:5),
          Box(margin:5),
          Box(margin:5),
          Box(margin:5),
          Box(margin:5),          
        ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(context),
      body: Column(
        children:[

            Row(
              children: getFiveStar(),
              mainAxisAlignment: MainAxisAlignment.center,
            ),

            Row(
              children: getFiveStar(),
               mainAxisAlignment: MainAxisAlignment.end,
            ),

            Row(
              children: getFiveStar(),
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            Row(
              children: getFiveStar(),
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
            
            Row(
              children: getFiveStar(),
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            ),

             
            Row(
              children: getFiveStar(),
              mainAxisAlignment: MainAxisAlignment.start,
            ),

            Column(
              children: getFiveStar(), 
              crossAxisAlignment: CrossAxisAlignment.start,
            ),

             




        ]
      ),
    );
  }
}
