import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/tabs_screen_provider.dart';
import './widgets/my_bottom_nav_bar.dart';
import './widgets/my_drawer.dart';

class TabsScreen extends StatelessWidget {
  TabsScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(),
      drawer: const MyDrawer(),
      backgroundColor: const Color.fromARGB(255, 248, 250, 255),
      bottomNavigationBar: const MyBottomNavBar(),
      body:
          Consumer<TabsScreenProvider>(builder: (context, reportsConsumer, _) {
        return PageView(
          controller: reportsConsumer.pageController,
          onPageChanged: (index) =>
              reportsConsumer.updateSelectedPageIndex(index),
          children: reportsConsumer.pages,
        );
      }),
    );
  }
}
