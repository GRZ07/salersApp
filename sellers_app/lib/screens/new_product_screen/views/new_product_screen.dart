import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/new_product_provider.dart';
import '../../../widgets/loading_error.dart';
import '../../../theme/sellers_theme.dart';
import '../views/widgets/drop_down.dart';

class NewProductScreen extends StatelessWidget {
  static const routeName = 'new-product-screen';

  const NewProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final newProductProvider = Provider.of<NewProductProvider>(context);

    final List<Widget> dropDownWidgets = [];
    for (var dropDown in newProductProvider.dropDowns) {
      dropDownWidgets.add(
        DropDown(
          dropDown: dropDown,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: newProductProvider.brandsFetched
            ? null
            : newProductProvider.getChoices(ctx: context, path: ''),
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
                    refresh: newProductProvider.refetchBrands,
                  )
                : LoadingError(
                    message: 'حدث خطأ ما في النظام، قم',
                    refresh: newProductProvider.refetchBrands,
                  );
          } else {
            return ListView(
              children: [
                const SizedBox(
                  height: 25,
                ),
                ...dropDownWidgets,
              ],
            );
          }
        },
      ),
    );
  }
}
