

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

AppBar createAppBar(BuildContext context){
  return AppBar(
          title: Text('Items Screen'),
          leading: Icon(Icons.account_balance_wallet),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            Icon(Icons.add),
            Icon(Icons.remove),
          ],          
        );
}