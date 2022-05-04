class Person{


  String name;
  
  String email;

  Person(this.name, this.email);
}

void main(){
  var p1= new Person('Vivek','vivek@gmail.com');
  var p2 = Person('Sanjay','sanjay@gmail.com');

  print(p1);
  print(p2);

  print(p1.name);
  print(p2.name);

}