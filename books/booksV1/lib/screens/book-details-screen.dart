// ignore_for_file: prefer_const_constructors

import 'package:books/models/book.dart';
import 'package:flutter/material.dart';

import '../widgets/app-icon.dart';

class BookDetailsScreen extends StatelessWidget {
  final Book book;
  const BookDetailsScreen(this.book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: AppIcon(),
        title: Text(book.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10),
          Text(
            book.title,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          Divider(),
          Image.network(
            book.cover,
            height: 450,
            fit: BoxFit.contain,
            
          ),
          Divider(),
          Text(
            'Price: ₹ ${book.price}',
            textAlign: TextAlign.center,
          ),
          
          Text('Rating: ${book.rating} / 5', textAlign: TextAlign.center),
         
        ],
      ),
    );
  }
}
