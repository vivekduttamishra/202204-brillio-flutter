



import 'package:flutter/material.dart';

class Box extends StatelessWidget{
  final double size;
  final Color color;
  final double margin;
  const Box({Key? key, this.size=24,this.margin=0, this.color=Colors.orange}): super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      color:color, 
      width:size, 
    
      height:size, 
      margin:EdgeInsets.all(margin),
    );
  }


}