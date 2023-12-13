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

}