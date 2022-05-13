// ignore_for_file: curly_braces_in_flow_control_structures, avoid_print

import 'dart:convert';

import 'package:http/http.dart' as http; //get the whole module as http
import 'book.dart';

class BookManager {
  Map<String, Book> dummyBooks = {};
  final baseUri = 'https://ca-booksapi.herokuapp.com/api/books/';

  void addBook(Book book) {
    dummyBooks[book.isbn] = book;
  }

  Future<List<Book>> getAllBooks() async {
    var uri = Uri.parse(baseUri);
    var response = await http.get(uri);
    var booksJson = response.body;

    var data = jsonDecode(booksJson);

    List<Book> books = data.map<Book>(  getBook).toList();

    return books;
  }

  Book getBook(bookMap) {
    
    print('title:${bookMap["title"]}\trating:${bookMap["rating"]}');
    double rating =1;
    if( bookMap['rating']!=null)
        rating =double.parse(bookMap['rating'].toString());
    return Book(
      isbn: bookMap["isbn"],
      title: bookMap["title"],
      author: bookMap["author"],
      description: bookMap["description"] ?? "",
      cover: bookMap["cover"],
      price: int.parse(bookMap["price"].toString()),
      rating: rating,
    );
  }

  Future<Book> getBookByIsbn(String isbn) async {

    var uri=Uri.parse('$baseUri/$isbn');
    var response =await http.get(uri);
    if(response.statusCode == 404){
      throw Exception('invalid isbn: $isbn');
    }
    var data = jsonDecode(response.body);
    print('received data from server $data ${response.statusCode}');
    



    var book = getBook(data);
    
    return book;

    //return dummyBooks[isbn];
  }
}
