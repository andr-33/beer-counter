class BeerModel{
  final String type;
  int amount;
  final double liters;
  final String? image;

  BeerModel({
    required this.type,
    required this.amount,
    required this.liters,
    this.image,
  });

  factory BeerModel.fromJSON(Map<String, dynamic> json){
    return BeerModel(
      type: json['type'] as String, 
      amount: json['amount'] as int, 
      liters: json['liters'] as double,
      image: json['image'] as String
    );
  }

}