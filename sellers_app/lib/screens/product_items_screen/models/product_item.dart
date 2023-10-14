import './flaw.dart';
import './price.dart';
import '../../../models/feature.dart';

class ProductItem {
  final int id;
  final String desc;
  final int productId;
  final Price price;
  final int warrantyEndsIn; // Days
  final bool usedProduct;
  final String
      usedProductCondition; // 'excellent' | 'good' | 'normal' | 'bad' | 'terrible'
  final String status; // 'available' | 'sold' | 'reserved'
  final List<Flaw> flaws;
  final List<Feature> features;

  ProductItem({
    required this.id,
    required this.desc,
    required this.productId,
    required this.price,
    required this.warrantyEndsIn,
    required this.usedProduct,
    required this.usedProductCondition,
    required this.status,
    required this.flaws,
    required this.features,
  });
}
