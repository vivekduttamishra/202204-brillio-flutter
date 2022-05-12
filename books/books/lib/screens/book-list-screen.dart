// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';

import '../widgets/app-icon.dart';
import '../widgets/book-list-item.dart';
import '../models/BookManager.dart';


class BookListScreen extends StatelessWidget {

  final BookManager bookManager;
  const BookListScreen({Key? key, required this.bookManager}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var books=bookManager.getAllBooks();

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
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: books.map( (book)=>BookListItem(book)).toList(),
        ),
      )
    );
  }
}
