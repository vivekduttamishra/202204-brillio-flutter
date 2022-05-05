class Button{
  int width;
  int height;
  late String backgroundColor;
  String foregroundColor;
  String title; //will change with every button 

  Button({required this.title, this.width=120, this.height=80, this.backgroundColor='gray', this.foregroundColor='black'});
  
  Button.black(this.title,{this.width=120, this.height=80, this.foregroundColor='white'}){
    backgroundColor='black';
  }
  toString(){
    return 'Button $title  [ width=$width, height=$height, backgroundColor=$backgroundColor forforegroundColor=$foregroundColor]';
  }
}
void main(){
  Button button1= Button( title:"Save"); // I must pass title and then others in any order. I need not pass everything
  Button button2= Button(title:"Delete", backgroundColor:'Red',);
  var button3= Button.black("Edit", foregroundColor:'Red',);


  print(button1);
  print(button2);
  print(button3);
}