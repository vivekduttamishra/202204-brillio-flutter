import 'point.dart'; //import everything from this file


void main(){
  var p1=Point(3,4);
  
  print(p1);
  
  var origin=Point(0,0);

  print('distance between $origin and $p1 is ${p1.distance(origin)}');

  var p2= Point.polar(5, 45);  //x and y will have same value such that 2 * x * x= 25

  print("p2 is $p2");
}

