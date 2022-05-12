// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../models/book.dart';

class BookListItem extends StatelessWidget {
  final Book book;
  const BookListItem(this.book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){print('book selected ${book.title}');},
      child: Card(
        margin: EdgeInsets.only(bottom: 10),
        color:Color(0xFFE0D68A),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              book.cover,
              height: 150,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Text(book.title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(height: 10,),
                    Text('by ${book.author}', 
                    style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    
                    Text('₹ ${book.price}'),
                    
                    
    
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
