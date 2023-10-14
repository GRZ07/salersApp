import 'package:flutter/material.dart';

import '../models/product_item.dart';

class ProductItemsProvider with ChangeNotifier {
  final List<ProductItem> _productItems = [];

  List<ProductItem> get productItems => _productItems;
}
