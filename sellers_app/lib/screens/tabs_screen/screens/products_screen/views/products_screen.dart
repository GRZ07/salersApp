import 'package:flutter/material.dart';

import './widgets/products_grid.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ProductsGrid(),
    );
  }
}
