class Person{


  String name=null;
  
  String? email=null;

  Person(String name, String email){
    this.name=name;
    this.email=email;
  }
}

void main(){
  var p1= new Person('Vivek','vivek@gmail.com');
  var p2 = Person('Sanjay','sanjay@gmail.com');

  print(p1);
  print(p2);

  print(p1.name);
  print(p2.name);

}