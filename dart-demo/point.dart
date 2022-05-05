import 'dart:math';  //import a standard dart language library

class Point{
  late double x;
  late double y;

  Point(this.x,this.y);  //cartisian point

  Point.polar(double r, double degree){
    double theta =  pi/180 * degree;
    x = r*cos(theta);
    y=  r*sin(theta);
  }

  double distance(Point p2){
    var dx= p2.x -x;
    var dy= p2.y -y;

    return sqrt(dx*dx + dy*dy);
  }

  String toString(){
    return "Point($x,$y)";
  }
}