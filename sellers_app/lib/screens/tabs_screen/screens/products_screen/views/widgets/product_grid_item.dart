import 'package:flutter/material.dart';

import '../../../../../../theme/sellers_theme.dart';
import '../../../../../product_items_screen/views/product_items_screen.dart';

class ProductGridItem extends StatelessWidget {
  final String name;
  final String primImageUrl;

  const ProductGridItem({
    required this.name,
    required this.primImageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.of(context).pushNamed(ProductItemsScreen.routeName),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(SellersTheme.radius),
              ),
              child: SizedBox(
                height: 200,
                child: Image.network(
                  primImageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: FittedBox(
                    child: Text(
                      name,
                      style: SellersTheme.textStyles.titleLarge.copyWith(
                          color: SellersTheme.colors.displayTextColor),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
