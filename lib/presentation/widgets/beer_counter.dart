import 'package:flutter/material.dart';

class BeerCounter extends StatelessWidget{
  final String type;

  const BeerCounter({
    super.key,
    required this.type,
  });

  @override
  Widget build (BuildContext context){
    return(Image.asset('lib/assets/images/can beer.png'));
  }
}
