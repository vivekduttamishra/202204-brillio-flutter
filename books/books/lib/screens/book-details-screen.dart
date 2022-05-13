// ignore_for_file: prefer_const_constructors, must_be_immutable, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';

import '../models/BookManager.dart';
import '../models/book.dart';
import '../widgets/book-author.dart';
import '../widgets/book-details.dart';
import '../widgets/book-summary.dart';
import 'titled-screen.dart';

class BookDetailsScreen extends StatefulWidget {
  static const id='/book/details';
  final BookManager bookManager=new BookManager();
  BookDetailsScreen({Key? key}) : super(key: key);

  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  int activeTab = 0;

  get manager {
    return widget.bookManager;
  }

  List<Function> tabs = [
    (book) => BookSummary(book: book),
    (book) => BookDetails(book: book),
    (book) => BookAuthor(book: book),
  ];

  @override
  Widget build(BuildContext context) {
    var isbn = ModalRoute.of(context)!.settings.arguments as String;
    //isbn+='x';
    return FutureBuilder<Book>(
      future: manager.getBookByIsbn(isbn),
      builder: (_,snapshot){
        if(snapshot.hasData)
          return generateBookDetails(snapshot.data as Book);
        else if(snapshot.hasError){
          return TitledScreen(
            title: 'ISBN $isbn Not found',
            message: snapshot.error.toString().replaceAll('Exception:',''),
          );
        } else{ //no data and no error means waiting
          return TitledScreen(
            title: 'searching ISBN $isbn',
            child:Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
    
  }


  //This function will create the UI when book is available
  Scaffold generateBookDetails(Book book) {
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
      body: tabs[activeTab](book),
      bottomNavigationBar: BottomNavigationBar(
        
        //backgroundColor:Theme.of(context).primaryColor,
        

        onTap: (index) {
          setState(() {
            activeTab = index;
          });
        },

        currentIndex: activeTab,
        
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.summarize),
            label: 'Summary',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Description',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Author',
          ),
        ],
      ),
    );
  }

  //this method will generate a UI showing Error Message
  Widget generateBookNotFound(String s) {
    return Scaffold(
      appBar: AppBar(title: Text('Book not found')),
      body: Center(
        child: Text(s),
      ),
    );
  }

  Widget generateWaiting(isbn) {
    return Scaffold(
      appBar: AppBar(title: Text('searching isbn $isbn')),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
