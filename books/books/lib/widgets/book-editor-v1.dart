// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class BookEditor extends StatefulWidget {
   
   BookEditor({ Key? key }) : super(key: key);

  @override
  State<BookEditor> createState() => _BookEditorState();
}

class _BookEditorState extends State<BookEditor> {

  String isbn='';
  String title='';
  String author='';




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
            onChanged: (text){
              isbn=text;
            },
          ),
          TextField(
            decoration:InputDecoration(
              label: Text('TITLE',style:Theme.of(context).textTheme.labelMedium),
              hintText: 'Book name or title',
            ),
            onChanged: (text){
              title=text;
            },
          ),
          TextField(
            decoration:InputDecoration(
              label: Text('AUTHOR',style:Theme.of(context).textTheme.labelMedium),
              hintText:"Author Name",
              
            ),
            onChanged: (text){
                author=text;
            },
          ),

          ElevatedButton(
            child:Text('Save'),
            onPressed:(){
              print('title:$title\tauthor=$author\tisbn=$isbn');
            }  
          ),

        ],
      ),
    );
  }
}