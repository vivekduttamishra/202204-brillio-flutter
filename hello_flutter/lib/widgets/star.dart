



import 'package:flutter/material.dart';

class Star extends StatelessWidget{
  final double size;
  final Color color;
  const Star({Key? key, this.size=24, this.color=Colors.orange}): super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return Icon(
            Icons.star,
            color:color,
            size:size,
            );
  }


}