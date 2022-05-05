void main(){

  //because it contains both string and integer it is considered as 
  var values=[1,2,3,'hello',4,5]; //List<Object>

  print(values);

  print('size of values is ${values.length}');

  for(var i=0;i<values.length;i++){
    print('values[$i] = ${values[i]}');
  }

  values[0]='hello'; //can store another String 
  values[1]=20.5; //can also stora a double value

 // print(values[100]); //error

  for(var value in values)
    print(value);


}