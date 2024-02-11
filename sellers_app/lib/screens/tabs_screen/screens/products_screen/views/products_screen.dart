import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../providers/user_provider.dart';
import '../../../../../theme/sellers_theme.dart';
import '../../../../../widgets/loading_error.dart';
import '../providers/products_provider.dart';
import './widgets/products_grid.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final token = Provider.of<UserProvider>(context, listen: false).token!;

    return Center(
      child:
          Consumer<ProductsProvider>(builder: (context, productsConsumer, _) {
        return FutureBuilder(
            future: !productsConsumer.productsFetched
                ? productsConsumer.fetchProducts(token)
                : null,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(
                    color: SellersTheme.colors.primaryColor,
                  ),
                );
              } else if (snapshot.error != null) {
                return snapshot.error is SocketException ||
                        snapshot.error is TimeoutException
                    ? LoadingError(
                        message: 'تحقق من اتصالك بالشبكة ثم قم',
                        refresh: productsConsumer.refetchProducts,
                      )
                    : LoadingError(
                        message: 'حدث خطأ ما في النظام، قم',
                        refresh: productsConsumer.refetchProducts,
                      );
              } else {
                return ProductsGrid(
                  products: productsConsumer.products,
                );
              }
            });
      }),
    );
  }
}
