import 'package:flutter/material.dart';

import '../../../../theme/sellers_theme.dart';

class AuthButton extends StatelessWidget {
  final String label;
  final void Function()? onClick;

  const AuthButton({
    required this.label,
    required this.onClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ElevatedButton(
        onPressed: onClick,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SellersTheme.radius),
          )),
          padding: MaterialStateProperty.all(const EdgeInsets.all(16)),
          backgroundColor:
              MaterialStateProperty.all(SellersTheme.colors.primaryColor),
        ),
        child: Center(
          child: Text(
            label,
            style: SellersTheme.textStyles.titleLarge.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
