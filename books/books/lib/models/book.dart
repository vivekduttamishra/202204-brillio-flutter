
// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:convert';

class Book {

  late String isbn;
  late String title;
  late String author;
  late String description;
  late String cover;
  late int price;
  late double rating;

  Book({
          required this.isbn, 
          required this.title, 
          required this.author, 
          required this.description,
          required this.cover,
          required this.price,
          required this.rating,
          });

  Book.fromJson(json){
    
    rating = 0;
    if( json['rating']!=null)
        rating =double.parse(json['rating'].toString());
    
    isbn= json["isbn"];
    title= json["title"];
    author= json["author"];
    description= json["description"] ?? "";
    cover= json["cover"];
    price= int.parse(json["price"].toString());
    
  }

  String toJson(){

    //covert book object to a map

    var map={
      "isbn": isbn,
      "title":title,
      "author":author,
      "rating":rating,
      "price":price,
      "cover":cover,
      "description":description,      
    };

    //convert map to json string
    return jsonEncode(map);
  }


}