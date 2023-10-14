import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../theme/sellers_theme.dart';
import '../../providers/tabs_provider.dart';
import './my_nav_bar_item.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TabsProvider>(builder: (context, tabsScreenConsumer, _) {
      return BottomNavigationBar(
        onTap: tabsScreenConsumer.selectPage,
        // Set the size of the labels to zero to hide them and apply a custom label
        selectedLabelStyle: const TextStyle(fontSize: 0),
        // elevation: 0,
        unselectedLabelStyle: const TextStyle(fontSize: 0),
        backgroundColor: SellersTheme.colors.backgroundColor,
        unselectedItemColor: Colors.grey,
        selectedItemColor: SellersTheme.colors.primaryColor,
        currentIndex: tabsScreenConsumer.selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: MyNavBarItem(
              icon: const Icon(Icons.star),
              title: 'قيد الفحص',
              selected: tabsScreenConsumer.selectedPageIndex == 0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: MyNavBarItem(
              icon: const Icon(Icons.home),
              title: 'منتجاتي',
              selected: tabsScreenConsumer.selectedPageIndex == 1,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: MyNavBarItem(
              icon: const Icon(Icons.account_circle),
              title: 'قيد الانتظار',
              selected: tabsScreenConsumer.selectedPageIndex == 2,
            ),
            label: '',
          ),
        ],
      );
    });
  }
}
