

void main(){

  var names = ["India","USA","uk","France","Germany","Norway"];

  names.forEach(print);

  var longNames= names.where((name) {
                    return name.length>3;
                  });

  print(longNames);



  var result =  names
                      .where((name)=>name.length>3)
                      .map( (name)=>name.toUpperCase());

  print(result);



}