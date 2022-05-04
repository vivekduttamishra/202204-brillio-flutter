

void main(){

  List<dynamic> items = <dynamic>[2,3,9,2,1];
 
  items.add(40); //can add more items than
  items.add("hello world"); 
  
  for(var item in items)
    print(item);


}