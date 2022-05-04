void main(){


  var values=[1,2,3,4,5];

  print(values);

  print('size of values is ${values.length}');

  for(var i=0;i<values.length;i++){
    print('values[$i] = ${values[i]}');
  }

//  values[0]='hello'; //can't assign String to an List<int>

 // print(values[100]); //error

  for(var value in values)
    print(value);


}