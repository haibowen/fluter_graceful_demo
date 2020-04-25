

import 'package:flutter/material.dart';
class AnimationHerOriginal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child:Center(
        child: Hero(
          tag: 'hyplo',
          child: Image.asset('images/test.jpg'),
        ),
      ),
    );
  }



}