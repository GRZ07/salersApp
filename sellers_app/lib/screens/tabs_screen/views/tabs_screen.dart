import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/tabs_provider.dart';
import './widgets/my_bottom_nav_bar.dart';
import './widgets/my_drawer.dart';
import '../../../theme/sellers_theme.dart';

class TabsScreen extends StatelessWidget {
  TabsScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Consumer<TabsProvider>(builder: (context, tabsConsumer, _) {
      return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(),
        drawer: const MyDrawer(),
        backgroundColor: SellersTheme.colors.primaryColor,
        bottomNavigationBar: const MyBottomNavBar(),
        floatingActionButton: tabsConsumer.selectedPageIndex == 1
            ? FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.add),
              )
            : null,
        body: PageView(
          controller: tabsConsumer.pageController,
          onPageChanged: (index) => tabsConsumer.updateSelectedPageIndex(index),
          children: tabsConsumer.pages,
        ),
      );
    });
  }
}
