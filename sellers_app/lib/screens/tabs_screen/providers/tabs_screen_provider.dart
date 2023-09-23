import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/new_orders_screen/views/new_orders_screen.dart';
import '../screens/testing_orders_screen/views/testing_orders_screen.dart';
import '../screens/products_screen/views/products_screen.dart';
import '../screens/new_orders_screen/providers/new_orders_provider.dart';
import '../screens/products_screen/providers/products_provider.dart';
import '../screens/testing_orders_screen/providers/testing_orders_provider.dart';

class TabsScreenProvider with ChangeNotifier {
  List<Widget> pages = [
    ChangeNotifierProvider.value(
      value: NewOrdersProvider(),
      child: const NewOrdersScreen(),
    ),
    ChangeNotifierProvider.value(
      value: ProductsProvider(),
      child: const ProductsScreen(),
    ),
    ChangeNotifierProvider.value(
      value: TestingOrdersProvider(),
      child: const TestingOrdersScreen(),
    ),
  ];

  int selectedPageIndex = 1;
  void updateSelectedPageIndex(int index) {
    selectedPageIndex = index;
    notifyListeners();
  }

  void selectPage(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  PageController pageController = PageController(initialPage: 1);

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
}
