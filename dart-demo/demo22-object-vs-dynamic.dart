import 'point.dart';

void main(){
  Point p1=Point(3,4);
  var origin= Point(0,0);

  var d1= p1.distance(origin); //I can access method of p1 

  var d2= origin.distance(p1); // we can intellisense


  Object p3= Point(1,1); //we have a point object referred by Object Reference







  //print(p3.x);  //I get an error because Object reference doesn't know about property x

  dynamic p4 = Point(2,2);

  print(p4.x); 
  
  print(p4.z);


}