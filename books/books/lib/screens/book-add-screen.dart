// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/book-editor.dart';
import 'titled-screen.dart';

class BookAddScreen extends StatelessWidget {

  static const id='/book/add';
  
  const BookAddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TitledScreen(
      title:'Add New Book',
      child: BookEditor(),
    );
  }
}
