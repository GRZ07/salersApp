class Product {
  final int id;
  final String name;
  final String brand;
  final Map<String, dynamic> features;
  final String category;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.brand,
    required this.features,
    required this.category,
    required this.imageUrl,
  });
}
