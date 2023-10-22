import 'package:flutter/material.dart';

import '../theme/sellers_theme.dart';

class DialogButton extends StatelessWidget {
  final String label;
  final Color color;
  final void Function()? onClick;

  const DialogButton({
    required this.label,
    required this.color,
    this.onClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return SizedBox(
      height: 36,
      child: ElevatedButton(
        onPressed: onClick,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            color,
          ),
        ),
        child: SizedBox(
          width: mediaQuery.size.width / 4.5,
          height: 14,
          child: FittedBox(
            child: Text(
              label,
              style: SellersTheme.textStyles.dialogButtonText,
            ),
          ),
        ),
      ),
    );
  }
}
