import 'package:beer_counter/presentation/widgets/beer_counter.dart';
import 'package:beer_counter/presentation/widgets/horizontal_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: CarouselSlider(
            options: CarouselOptions(enableInfiniteScroll: false, height: 500),
            items: ["Cerveza","Litrona","Garra"].map((tipo){
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: HorizontalSlider(child: BeerCounter(type: ""),)
              );
            }).toList(),
          ),
        )
    );
  }
}

