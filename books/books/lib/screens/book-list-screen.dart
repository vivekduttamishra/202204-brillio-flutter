// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures


import 'package:flutter/material.dart';

import '../models/book.dart';
import '../widgets/app-icon.dart';
import '../widgets/book-list-item.dart';
import '../models/BookManager.dart';


class BookListScreen extends StatefulWidget {

  final BookManager bookManager;
  const BookListScreen({Key? key, required this.bookManager}) : super(key: key);

  @override
  State<BookListScreen> createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {

  List<Book> books=[];

  void fetchBooks() async {

    var b= await widget.bookManager.getAllBooks();

    setState((){
      books=b;
    });


  }
  @override
  Widget build(BuildContext context) {
    
    if(books.isEmpty)
      fetchBooks();


    return Scaffold(
      appBar: AppBar(
       // leading: AppIcon(),
        title: Text('Great Books'),
        actions:<Widget>[
          IconButton(
            icon:Icon(Icons.add),
            onPressed:(){},
            ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: books.map( (book)=>BookListItem(book)).toList(),
        ),
      )
    );
  }
}
