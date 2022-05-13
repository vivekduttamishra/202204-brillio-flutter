// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BookEditor extends StatelessWidget {
   BookEditor({ Key? key }) : super(key: key);
  TextEditingController isbnController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height:600,
      margin: EdgeInsets.all(20),
      child:Column(
        children: [
          Text('Book Editor', style: Theme.of(context).textTheme.headlineLarge,),
          TextField(
            decoration: InputDecoration(
              labelText: 'Isbn',
              hintText: '12345',
            ),
            controller: isbnController,
          ),
          TextButton(
            child: Text('Submit'),
            onPressed:(){
               print(isbnController.text);
            },
          )
        ],
      ),
    );
  }
}