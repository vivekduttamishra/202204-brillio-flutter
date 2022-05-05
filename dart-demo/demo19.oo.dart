class Button{

  int width;
  int height;
  String backgroundColor;
  String foregroundColor;
  String title; //will change with every button 

  Button(this.title,{ this.width=120, this.height=80, this.backgroundColor='gray', this.foregroundColor='black'});

  toString(){
    return 'Button $title  [ width=$width, height=$height, backgroundColor=$backgroundColor forforegroundColor=$foregroundColor]';
  }

}

void main(){
  Button button= Button("Save", backgroundColor: "black"); // I mus tpass all values
  print(button);

}