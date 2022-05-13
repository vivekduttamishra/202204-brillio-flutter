// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures


import 'package:flutter/material.dart';

import '../models/book.dart';
import '../widgets/app-drawer.dart';
import '../widgets/app-icon.dart';
import '../widgets/book-editor.dart';
import '../widgets/book-list-item.dart';
import '../models/BookManager.dart';
import 'book-add-screen.dart';
import 'book-details-screen.dart';
import 'user-login-screen.dart';


class BookListScreen extends StatefulWidget {
  static const id='/';
  final BookManager bookManager=BookManager();
  BookListScreen({Key? key}) : super(key: key);

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
            onPressed:(){
              Navigator.of(context).pushNamed(BookAddScreen.id);
            },
            ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: createSmartList(books),
        
      ),

      drawer: Drawer(
        
        child: AppDrawer(),
      ),
  
    );
  }

  ListView createSimpleList(books) {
    return ListView(
        children:books.map((book)=>BookListItem(book)).toList(),
    );
  }

  ListView createSmartList(List<Book> books) {
      return ListView.builder(
        itemCount: books.length,

        itemBuilder: (context, index){
         // print('building BookListItem for ${books[index].title}');
          return BookListItem(books[index]);
        },

      );

  }

  showBookEditor(BuildContext context) {
    showModalBottomSheet(context: context, builder: (_){

      return BookEditor();
    });
  }

  
}

