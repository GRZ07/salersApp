import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

import '../theme/sellers_theme.dart';

class DottedButton extends StatelessWidget {
  final String label;
  final void Function() onClick;

  const DottedButton({
    required this.label,
    required this.onClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 36,
      child: DottedBorder(
        color: SellersTheme.colors.firstSecondaryColor,
        borderType: BorderType.RRect,
        radius: const Radius.circular(10),
        dashPattern: const [10, 8],
        child: SizedBox(
          width: double.infinity,
          height: 36,
          child: ElevatedButton(
            onPressed: onClick,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  SellersTheme.colors.backgroundColor),
              elevation: MaterialStateProperty.all(0),
            ),
            child: Text(
              label,
              style: SellersTheme.textStyles.titleLarge,
            ),
          ),
        ),
      ),
    );
  }
}
