import 'package:flutter/material.dart';

import '../theme/sellers_theme.dart';

class LoadingError extends StatelessWidget {
  final String message;
  final void Function() refresh;

  const LoadingError({
    required this.message,
    required this.refresh,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            style: SellersTheme.textStyles.display,
          ),
          TextButton(
            onPressed: refresh,
            child: Text(
              'بتحديث الصفحة',
              style: SellersTheme.textStyles.display.copyWith(
                color: SellersTheme.colors.primaryColor,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          )
        ],
      ),
    );
  }
}
