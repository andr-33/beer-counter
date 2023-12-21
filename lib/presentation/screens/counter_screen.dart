import 'package:beer_counter/data/services/services.dart';
import 'package:beer_counter/presentation/widgets/BeerCounter/beer_counter.dart';
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
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: BeerCounter(
                      beer: beer,
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
