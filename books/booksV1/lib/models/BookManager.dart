import 'book.dart';

class BookManager{

  Map<String,Book> books={};
  
  void addBook(Book book){
    books[book.isbn] = book;
  }

  List<Book> getAllBooks(){
    return books.values.toList();
  }

  Book? getBookByIsbn(String isbn){
    return books[isbn];
  }

}