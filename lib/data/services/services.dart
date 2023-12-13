
import 'dart:convert';
import 'dart:io';

import 'package:beer_counter/domain/models/beer_model.dart';

/*Future<List<BeerModel>> getBeersInformation() async{
  try{
    final collection = File('lib/data/collections/beers.json');
    final content = await collection.readAsString();

    final List<dynamic> res = json.decode(content);

  }
  catch(e){
    print("Err: $e");
  }
}*/