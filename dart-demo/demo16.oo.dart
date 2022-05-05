class Button{

  int width=120;
  int height=80;
  String backgroundColor="gray";
  String foregroundColor="white";
  late String title; //will change with every button 

  Button(this.title, this.width, this.height, this.backgroundColor, this.foregroundColor);

  toString(){
    return 'Button $title  [ width=$width, height=$height, backgroundColor=$backgroundColor forforegroundColor=$foregroundColor]';
  }

}

void main(){
  Button button= Button('Print',120,80,"black","white"); // I mus tpass all values
  print(button);

}