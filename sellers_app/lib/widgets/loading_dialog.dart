import 'package:flutter/material.dart';

import '../theme/sellers_theme.dart';

class LoadingDialog extends StatelessWidget {
  final String message;

  const LoadingDialog({
    required this.message,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border:
              Border.all(color: SellersTheme.colors.primaryColor, width: 1.5),
          color: SellersTheme.colors.backgroundColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Row(
                children: [
                  CircularProgressIndicator(
                    color: SellersTheme.colors.primaryColor,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      message,
                      style: SellersTheme.textStyles.dialogLabel,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
