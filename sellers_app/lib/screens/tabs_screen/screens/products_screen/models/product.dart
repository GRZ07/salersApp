import '../../../../../models/feature.dart';

class Product {
  final int id;
  final String name;
  final String brand;
  final List<Feature> features;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.brand,
    required this.features,
    required this.imageUrl,
  });
}
