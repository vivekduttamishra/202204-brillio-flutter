// ignore_for_file: prefer_const_constructors, must_be_immutable, curly_braces_in_flow_control_structures


import 'package:flutter/material.dart';

import '../models/BookManager.dart';
import '../models/book.dart';
import '../widgets/book-author.dart';
import '../widgets/book-details.dart';
import '../widgets/book-summary.dart';

class BookDetailsScreen extends StatefulWidget {
  
  final BookManager bookManager;
  BookDetailsScreen({required this.bookManager, Key? key}) : super(key: key);

  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {

  int activeTab=0;

  List<Function> tabs=[
    (book)=> BookSummary(book:book),
    (book)=> BookDetails(book:book),
    (book)=> BookAuthor(book:book),
  ];


  @override
  Widget build(BuildContext context) {

    var isbn = ModalRoute.of(context)!.settings.arguments as String;
    
    //isbn+="XXX";
    
    
    var b=widget.bookManager.getBookByIsbn(isbn);
    if(b==null){
        return Scaffold(
          appBar: AppBar(
            title:Text("Book Not Found"),
          ),
          body:Center(child:Text('No book found with isbn: $isbn')),
        );
    }


    Book book=b ;

    return Scaffold(
      appBar: AppBar(
        //leading: AppIcon(),
        title: Text(book.title ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: tabs[activeTab](book),
    
      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        //backgroundColor:Theme.of(context).primaryColor,
        // ignore: prefer_const_literals_to_create_immutables

        onTap:(index){
         setState((){activeTab=index;});
        },

        currentIndex: activeTab,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon:Icon(Icons.summarize),
            label:'Summary',
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.info),
              label:'Description',
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.person),
              label:'Author',
          ),
          

        ],),
    
    );
  }
}
