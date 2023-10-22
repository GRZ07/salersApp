import 'package:flutter/material.dart';

import '../theme/sellers_theme.dart';

class MyButton extends StatelessWidget {
  final Widget child;
  final void Function()? onClick;

  const MyButton({
    required this.child,
    required this.onClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
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
          child: child,
        ),
      ),
    );
  }
}
