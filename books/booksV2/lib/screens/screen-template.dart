// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/app-icon.dart';

class BlankScreen extends StatelessWidget {
  const BlankScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppIcon(),
        title: Text('Great Books'),
        actions:<Widget>[
          IconButton(
            icon:Icon(Icons.add),
            onPressed:(){},
            ),
        ],
      ),
      body: Center(
        child: Text('Our Recommended List of our Books'),
      ),
    );
  }
}
