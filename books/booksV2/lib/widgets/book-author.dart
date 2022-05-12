// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../models/book.dart';

class BookAuthor extends StatelessWidget {
  const BookAuthor({
    Key? key,
    required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Center(
        child:Text(book.author),
        );
  }
}
