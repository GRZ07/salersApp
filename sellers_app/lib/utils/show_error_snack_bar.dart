import 'package:flutter/material.dart';

import './my_snack_bar.dart';
import '../theme/sellers_theme.dart';

void showErrorSnackBar(ctx, message) {
  ScaffoldMessenger.of(ctx).hideCurrentSnackBar();
  ScaffoldMessenger.of(ctx).showSnackBar(
    SnackBar(
      content: MySnackBar(
        content: message,
        icon: Image.asset(
          'lib/assets/icons/error.png',
          width: 20,
          height: 20,
          color: SellersTheme.colors.errorColor,
        ),
        borderColor: SellersTheme.colors.errorColor,
      ),
      backgroundColor: SellersTheme.colors.backgroundColor,
    ),
  );
}
