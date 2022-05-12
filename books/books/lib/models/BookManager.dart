import 'dart:convert';

import 'package:http/http.dart' as http; //get the whole module as http
import 'book.dart';

class BookManager{

  Map<String,Book> dummyBooks={};
  final baseUri='https://ca-booksapi.herokuapp.com/api/books/';
  
  void addBook(Book book){
    dummyBooks[book.isbn] = book;
  }

  Future<List<Book>> getAllBooks() async{

    var uri= Uri.parse(baseUri);
    var response = await http.get(uri);
    var booksJson= response.body;
        
    var data = jsonDecode(booksJson);
      
    var books = data.map( (bookMap)=> Book(
        isbn: bookMap["isbn"], 
        title:bookMap["title"], 
        author:bookMap["author"],
        description:bookMap["description"], 
        cover:bookMap["cover"],
        price:0,   //bookMap["price"], 
        rating:5,  //bookMap["rating"],
    )).toList();

    return books;
  }

  Book? getBookByIsbn(String isbn){
    return dummyBooks[isbn];
  }

}