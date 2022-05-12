// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child:Text('Custom Widget'),
    );
  }
}