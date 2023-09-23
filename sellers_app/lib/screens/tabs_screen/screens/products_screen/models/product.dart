class Product {
  final int id;
  final String name;
  final String desc;
  final String brand;
  final Map<String, dynamic> features;
  final List<String> flaws;
  final String category;
  final double rating;
  final List<String> imageUrls;
  final String primImageUrl;

  Product({
    required this.id,
    required this.name,
    required this.desc,
    required this.brand,
    required this.features,
    required this.flaws,
    required this.category,
    required this.rating,
    required this.imageUrls,
    required this.primImageUrl,
  });
}
