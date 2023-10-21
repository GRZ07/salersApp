import 'package:flutter/material.dart';

import '../theme/sellers_theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SellersTheme.colors.backgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'جار التحميل...',
            style: SellersTheme.textStyles.display,
          ),
        ),
      ),
    );
  }
}
