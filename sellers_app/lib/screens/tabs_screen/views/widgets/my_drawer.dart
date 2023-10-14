import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../theme/sellers_theme.dart';
import '../../providers/tabs_provider.dart';
import './drawer_item.dart';
import '../../../history_screen/views/history_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Consumer<TabsProvider>(builder: (context, tabsScreenConsumer, _) {
        return Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  width: double.infinity,
                  height: 170,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'lib/assets/images/background.png',
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    gradient: SellersTheme.gradients.verticalGradient,
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundImage:
                        AssetImage('lib/assets/images/profile_placeholder.png'),
                  ),
                  title: Text(
                    'username',
                    style: SellersTheme.textStyles.titleMedium
                        .copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            DrawerItem(
              icon: const Icon(Icons.home),
              label: 'منتجاتي',
              selectedPageIndex: tabsScreenConsumer.selectedPageIndex,
              onClick: () {
                Navigator.of(context).pop();
                tabsScreenConsumer.selectPage(1);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            DrawerItem(
              icon: const Icon(Icons.account_circle),
              label: 'قيد الانتظار',
              selectedPageIndex: tabsScreenConsumer.selectedPageIndex,
              onClick: () {
                Navigator.of(context).pop();
                tabsScreenConsumer.selectPage(2);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            DrawerItem(
              icon: const Icon(Icons.star),
              label: 'قيد الفحص',
              selectedPageIndex: tabsScreenConsumer.selectedPageIndex,
              onClick: () {
                Navigator.of(context).pop();
                tabsScreenConsumer.selectPage(0);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            DrawerItem(
              icon: const Icon(Icons.wallet),
              label: 'طلبات سابقة',
              selectedPageIndex: tabsScreenConsumer.selectedPageIndex,
              onClick: () =>
                  Navigator.of(context).pushNamed(HistoryScreen.routeName),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        );
      }),
    );
  }
}
