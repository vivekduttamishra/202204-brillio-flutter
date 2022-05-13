// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NetworkFallbackImage extends StatelessWidget {

  final double? width;
  final double? height;
  final String url;
  final String fallbackUrl;
  final String title;


  const NetworkFallbackImage( this.url,{
          this.fallbackUrl='assets/images/fallback.jpg', 
          this.title='',
          this.width,this.height, 
          Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:width,
      height:height,
      child: Image.network(
        url,
        width:width,
        height:height,
        errorBuilder: (ctx,err,state){
          return Stack(
            children: [
              Image.asset(fallbackUrl,width:width,height:height),
              Center(
                child:Text(title,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines:3,
                ),
              ),
              
            ],
          );
        },
      ),
    );
  }
}