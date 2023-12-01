import 'package:beer_counter/presentation/widgets/beer_counter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: CarouselSlider(
            options: CarouselOptions(enableInfiniteScroll: false),
            items: ["Cerveza","Litrona","Garra"].map((tipo){
              return BeerCounter(type: tipo);
            }).toList(),
          ),
        )
    );
  }
}

