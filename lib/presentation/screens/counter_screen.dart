import 'package:beer_counter/data/services/services.dart';
import 'package:beer_counter/presentation/widgets/beer_counter.dart';
import 'package:beer_counter/presentation/widgets/vertical_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: FutureBuilder(
        future: getBeersInformation(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return CarouselSlider(
              options:
                  CarouselOptions(enableInfiniteScroll: false, height: 500),
              items: snapshot.data?.map((beer) {
                return Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: VerticalSlider(
                      child: BeerCounter(type: beer.type, amount: beer.amount, liters: beer.liters, image: beer.image),
                    ));
              }).toList(),
            );
          }
          else if(snapshot.hasError){
            return Text(snapshot.error.toString());
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    ));
  }
}
