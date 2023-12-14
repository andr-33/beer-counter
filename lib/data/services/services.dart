
import 'dart:convert';

import 'package:beer_counter/domain/models/beer_model.dart';
import 'package:flutter/services.dart';

Future<List<BeerModel>> getBeersInformation() async{
  try{
    final collection = await rootBundle.loadString('lib/data/collections/beers.json');

    final List<dynamic> res = json.decode(collection);
    final List<BeerModel> beers = res.map((beer) => BeerModel.fromJSON(beer)).toList();

    return beers;
  }
  catch(e){
    print("Err: $e");
    return[];
  }
}