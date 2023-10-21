import 'package:flutter/material.dart';

import '../../../../theme/sellers_theme.dart';

class AuthField extends StatelessWidget {
  final InputDecoration decoration;

  const AuthField({
    required this.decoration,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
          color: SellersTheme.colors.fieldFillColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            obscureText: false,
            decoration: decoration,
          ),
        ),
      ),
    );
  }
}
