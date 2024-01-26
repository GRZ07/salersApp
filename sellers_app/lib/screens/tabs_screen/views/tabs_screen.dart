import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/tabs_provider.dart';
import './widgets/my_bottom_nav_bar.dart';
import './widgets/my_drawer.dart';
import '../../../theme/sellers_theme.dart';
import '../../new_product_screen/views/new_product_screen.dart';

class TabsScreen extends StatelessWidget {
  TabsScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Consumer<TabsProvider>(builder: (context, tabsConsumer, _) {
      return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(),
        drawer: MyDrawer(
          scaffoldKey: _scaffoldKey,
        ),
        backgroundColor: SellersTheme.colors.primaryColor,
        bottomNavigationBar: const MyBottomNavBar(),
        floatingActionButton: tabsConsumer.selectedPageIndex == 1
            ? FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(NewProductScreen.routeName);
                },
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
