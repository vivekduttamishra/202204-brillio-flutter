// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, avoid_print, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';

import '../models/BookManager.dart';
import '../models/book.dart';

class BookEditor extends StatefulWidget {
  BookEditor({Key? key}) : super(key: key);

  @override
  State<BookEditor> createState() => _BookEditorState();
}


class _BookEditorState extends State<BookEditor> {
  final formKey = GlobalKey<FormState>();
  var manager=new BookManager();
  var book = Book(isbn:'', title:'', author:'',description:'',cover:'',price:0, rating:5);

  Future<Book>? future;



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 600,
        margin: EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  label: Text('ISBN',
                      style: Theme.of(context).textTheme.labelMedium),
                  hintText: 'Unqiue 10-14 character text',
                  errorText: null,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'ISBN is required';
                  else if (value.length < 10 || value.length > 14)
                    return 'ISBN should be 10-40 chars';
                  else
                    return null; //no error.
                },
                onSaved: (value) => book.isbn = (value as String),
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('TITLE',
                      style: Theme.of(context).textTheme.labelMedium),
                  hintText: 'Book name or title',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'Title is required';
                  else
                    return null; //no error.
                },
                onSaved: (value) => book.title = (value as String),
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('AUTHOR',
                      style: Theme.of(context).textTheme.labelMedium),
                  hintText: "Author Name",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'Author is required';
                  else
                    return null; //no error.
                },
                onSaved: (value) => book.author = (value as String),
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Cover',
                      style: Theme.of(context).textTheme.labelMedium),
                  hintText: "Cover URL from internet",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'Cover Url is required';
                  else if(!value.startsWith("http"))
                    return 'Invalid cover url';
                  else
                    return null; //no error.
                },
                onSaved: (value) => book.cover = (value as String),
                keyboardType: TextInputType.url,
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Description',
                      style: Theme.of(context).textTheme.labelMedium),
                  hintText: "Provide book description",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'Author is required';
                  else if (value.length <10)
                    return 'Description must have at least chars';
    
                  return null; //no error.
                },
                onSaved: (value) => book.description = (value as String),
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Price',
                      style: Theme.of(context).textTheme.labelMedium),
                  hintText: "Price in Indian Rupee",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'Price is required';
                  try{
    
                    var price= int.parse(value);
                    if(price<0)
                      return "Price can't be negative";
                  }catch(error){
                    return "Price must be an integer";
                  }
                  
                  return null; //no error.
                },
                onSaved: (value) => book.price = int.parse(value as String),
                keyboardType: TextInputType.numberWithOptions(decimal: false, signed:false),
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Rating',
                      style: Theme.of(context).textTheme.labelMedium),
                  hintText: "Rating between 1 to 5",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'rating is required';
                  try{
                    var rating = double.parse(value);
                    if(rating<1 || rating >5)
                    return 'rating must be between 1 and 5';
                  }catch(error){
                    return 'rading must be a number';
                  }
                  return null; //no error.
                },
                onSaved: (value) => book.rating = double.parse(value as String),
                keyboardType: TextInputType.number,
              ),
              ElevatedButton(
                  child: Text('Save'),
                  onPressed: () {
                    var result = formKey.currentState?.validate();
    
                    if (result as bool) {
                      formKey.currentState?.save();
                    
                      //print(book.toJson());

                      setState((){
                        future=manager.addBook(book);
                      });

                    }
                  }),

                  (
                    future==null?SizedBox(width: 1,):
                    FutureBuilder<Book>(
                      future:future,
                      builder:(_,snapshot){
                        if(snapshot.hasData){ //success
                          Navigator.of(context).pop(); //return back
                          //setState((){future=null;});
                          return Text('');
                        } else if(snapshot.hasError){
                          //setState((){future=null;});
                          return Text(snapshot.error.toString()); 
                        }else{
                          return CircularProgressIndicator();
                        }
                        
                      }
                    )
                  
                   )

                
            ],
          ),
        ),
      ),
    );
  }
}
