// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, avoid_print

import 'package:flutter/material.dart';

class BookEditor extends StatefulWidget {
   
   BookEditor({ Key? key }) : super(key: key);

  @override
  State<BookEditor> createState() => _BookEditorState();
}

class _BookEditorState extends State<BookEditor> {

  TextEditingController isbnController=TextEditingController();
  TextEditingController titleController=TextEditingController();
  TextEditingController authorController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      height:600,
      margin: EdgeInsets.all(20),
      child:Column(
        children: [
          TextField(
            decoration:InputDecoration(
              label: Text('ISBN',style:Theme.of(context).textTheme.labelMedium),
              hintText: 'Unqiue 10-14 character text',
              errorText: null,
            ),
            controller:isbnController,
            
          ),
          TextField(
            decoration:InputDecoration(
              label: Text('TITLE',style:Theme.of(context).textTheme.labelMedium),
              hintText: 'Book name or title',
            ),
            controller:titleController,
          ),
          TextField(
            decoration:InputDecoration(
              label: Text('AUTHOR',style:Theme.of(context).textTheme.labelMedium),
              hintText:"Author Name",
              
            ),
            controller:authorController,
          ),

          ElevatedButton(
            child:Text('Save'),
            onPressed:(){
                print('ISBN: ${isbnController.text}');
                print('TITLE: ${titleController.text}');
                print('AUTHOR: ${authorController.text}');
                
                
            }  
          ),

        ],
      ),
    );
  }
}