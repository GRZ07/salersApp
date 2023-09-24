import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './product_grid_item.dart';
import '../../providers/products_provider.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductsProvider>(context).products;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 2.8,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (ctx, i) => ProductGridItem(
        name: products[i].name,
        primImageUrl: products[i].imageUrl,
      ),
    );
  }
}
