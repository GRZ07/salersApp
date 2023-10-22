import 'package:flutter/material.dart';

import '../theme/sellers_theme.dart';

class MyAlertDialog extends StatelessWidget {
  final String label;
  final Widget leftButton;
  final Widget rightButton;
  final Color borderColor;
  final String? note;

  const MyAlertDialog({
    required this.label,
    required this.leftButton,
    required this.rightButton,
    required this.borderColor,
    this.note,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: borderColor, width: 1.5),
          color: SellersTheme.colors.backgroundColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              textAlign: TextAlign.center,
              style: SellersTheme.textStyles.dialogLabel.copyWith(
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w200,
              ),
            ),
            if (note != null)
              Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    note!,
                    style: SellersTheme.textStyles.dialogNote.copyWith(
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w200,
                    ),
                  )),
            const SizedBox(height: 20),
            Row(
              children: [
                rightButton,
                const SizedBox(
                  width: 20,
                ),
                leftButton,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
