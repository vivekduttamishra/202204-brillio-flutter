

void main(){
  var names=['India','USA','France', 'Norway','Japan'];

  //I wan't a new list of values containing all names in upper case
  //manual process
  var upperNames = <String>[];
  for(var name in names) 
      upperNames.add(name.toUpperCase());

  print(upperNames);


  //Option 2 - Use list.Map()

  var upperNames2 = names.map((name)=>name.toUpperCase());

  //note you don't really get a list although it behaves as list
  print(upperNames2);

  //to covert iterable you should call toList()
  var nameList =upperNames2.toList();

  print(nameList);

  var nameLengthList = names.map( (name)=> name.length ).toList();

  print(nameLengthList);


}