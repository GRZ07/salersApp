import 'package:flutter/material.dart';

import '../../../../theme/sellers_theme.dart';

class DrawerItem extends StatelessWidget {
  final int selectedPageIndex;
  final Widget icon;
  final String label;
  final void Function() onClick;

  const DrawerItem({
    required this.selectedPageIndex,
    required this.icon,
    required this.label,
    required this.onClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: ListTile(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  topLeft: Radius.circular(12))),
          tileColor: (selectedPageIndex == 1 && label == 'منتجاتي') ||
                  (selectedPageIndex == 2 && label == 'قيد الانتظار') ||
                  (selectedPageIndex == 0 && label == 'قيد الفحص')
              ? SellersTheme.colors.primaryColorTransparent
              : const Color.fromARGB(0, 255, 255, 255),
          dense: true,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              children: [
                icon,
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    label,
                    style: SellersTheme.textStyles.titleMedium
                        .copyWith(color: SellersTheme.colors.displayTextColor),
                  ),
                ),
              ],
            ),
          ),
          onTap: onClick,
        ),
      ),
    );
  }
}
