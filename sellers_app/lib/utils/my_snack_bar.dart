import 'package:flutter/material.dart';

import '../theme/sellers_theme.dart';

class MySnackBar extends StatelessWidget {
  final String content;
  final Widget icon;
  final Color borderColor;

  const MySnackBar({
    required this.content,
    required this.icon,
    required this.borderColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: borderColor,
            width: 1.5,
          ),
          color: SellersTheme.colors.backgroundColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            const SizedBox(width: 10),
            Text(
              content,
              style: SellersTheme.textStyles.display,
            )
          ],
        ),
      ),
    );
  }
}
