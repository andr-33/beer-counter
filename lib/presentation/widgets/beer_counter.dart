import 'package:flutter/material.dart';

class BeerCounter extends StatelessWidget{
  final String type;
  final int amount;
  final double liters;
  final String? image; 

  const BeerCounter({
    super.key,
    required this.type,
    required this.amount,
    required this.liters,
    this.image
  });

  @override
  Widget build (BuildContext context){
    return Column(
      children: [
        Text("$type ${liters}L"),
        Text("$amount"),
        Image.asset('lib/assets/images/$image')
      ],
    );
  }
}
