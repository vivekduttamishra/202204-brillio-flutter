class Person{
  String name;
  String email;
  Person(this.name, this.email);
  toString () => '[Name = $name\tEmail=$email]';
}


class Employee extends Person{
  int employeeId;
  double salary;

  Employee(String name, String email, this.employeeId, this.salary)
        :super(name,email){}

  toString()=> 'Employee Id =$employeeId\tSalary=$salary\tPersonal Info=${super.toString()}';
}



void main(){
  var emp=new Employee("Vivek","vivek@gmail.com", 1, 10000);
  print(emp);
}