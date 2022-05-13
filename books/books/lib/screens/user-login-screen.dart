// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/app-drawer.dart';
import '../widgets/app-icon.dart';

class UserLoginScreen extends StatelessWidget {
  static const id='/user/login';
  const UserLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Login'),
        actions:<Widget>[
          IconButton(
            icon:Icon(Icons.add),
            onPressed:(){},
            ),
        ],
      ),
      body: Center(
        child: Text('User Login'),
      ),
      drawer:Drawer(
        child:AppDrawer(),
      ),
    );
  }
}
