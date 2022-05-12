
class Book{
  String id;
  String title;
  Book(this.id,this.title);
}

Map<String,Book> books={
  "111":Book("111","The Accursed God"),
  "222":Book("222","Kane and Abel"),
};



Future<Book>  getBookById(String id){

  //add some unwanted delay

  return Future.delayed(
    Duration(seconds:2),
    //run this function after 2 seconds
    (){
        var b= books[id];
        if(b!=null)
          return b;
        else
          throw Exception('Invalid book id $id');
    }
    );

}

void testGetBookById(String id) async{

  try{

    print('please wait whlie we search for book with id $id');
    var book =await getBookById(id);
    print('Got the book ${book.title}');

  }catch(error){

    print("Error: $error");

  }
}


void main(){
    testGetBookById('111');
    testGetBookById('444');
    testGetBookById('222');
}