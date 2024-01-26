import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../theme/sellers_theme.dart';
import '../../providers/tabs_provider.dart';
import './drawer_item.dart';
import '../../../history_screen/views/history_screen.dart';
import '../../../../providers/user_provider.dart';
import '../../../../widgets/my_alert_dialog.dart';
import '../../../../widgets/loading_dialog.dart';
import '../../../../widgets/dialog_button.dart';

class MyDrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const MyDrawer({
    required this.scaffoldKey,
    super.key,
  });

  void _confirmLogOutDialog(
      BuildContext context, Future<void> Function(BuildContext) logout) {
    showDialog(
      context: context,
      builder: (ctx) => MyAlertDialog(
        label: 'هل أنت متأكد من تسجيل الخروج من حسابك؟',
        leftButton: Expanded(
          child: DialogButton(
            onClick: () async {
              Navigator.of(ctx).pop();
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (ctx) =>
                    const LoadingDialog(message: 'جار تسجيل الخروج'),
              );
              await logout(context);
              if (scaffoldKey.currentContext != null) {
                scaffoldKey.currentState!.closeDrawer();
              }
              if (!context.mounted) return;
              Navigator.of(context).pop();
            },
            label: 'تأكيد',
            color: SellersTheme.colors.errorColor,
          ),
        ),
        rightButton: Expanded(
          child: DialogButton(
            onClick: () => Navigator.of(context).pop(),
            label: 'تراجع',
            color: SellersTheme.colors.firstSecondaryColor,
          ),
        ),
        borderColor: SellersTheme.colors.errorColor,
      ),
    );
  }

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
            DrawerItem(
              icon: const Icon(Icons.wallet),
              label: 'تسجيل الخروج',
              selectedPageIndex: tabsScreenConsumer.selectedPageIndex,
              onClick: () => _confirmLogOutDialog(context,
                  Provider.of<UserProvider>(context, listen: false).logout),
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
