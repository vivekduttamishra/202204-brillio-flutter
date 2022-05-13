
import 'package:flutter/material.dart';

import '../models/book.dart';
import 'network-failsafe-image.dart';

class BookSummary extends StatelessWidget {
  const BookSummary({
    Key? key,
    required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10),
        Text(
          book.title,
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        Divider(),
        NetworkFailsafeImage(
          book.cover,
          height: 450,
          width:450*6/8,
          title:book.title,
          fit: BoxFit.contain,          
        ),
        Divider(),
        Text(
          'Price: ₹ ${book.price}',
          textAlign: TextAlign.center,
        ),
        
        Text('Rating: ${book.rating} / 5', textAlign: TextAlign.center),
       
      ],
    );
  }
}
