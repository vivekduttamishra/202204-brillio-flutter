// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../models/book.dart';
import 'network-failsafe-image.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({
    Key? key,
    required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              NetworkFailsafeImage(
                book.cover,
                height: 100,
                width: 100 * 6 / 8,
                title: book.title,
                fit: BoxFit.contain,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  book.title,
                  style: Theme.of(context).textTheme.titleLarge,
                  maxLines: 2,
                  softWrap: true,
                ),
              ),
            ],
          ),
          Divider(),
          Text('Description', style: Theme.of(context).textTheme.headlineLarge),
          Divider(),
          Text(
            book.description,
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
