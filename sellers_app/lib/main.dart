import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import './api/firebase_api.dart';
import './screens/tabs_screen/views/tabs_screen.dart';
import './screens/history_screen/views/history_screen.dart';
import './screens/product_items_screen/views/product_items_screen.dart';
import './screens/tabs_screen/providers/tabs_provider.dart';
import './screens/history_screen/providers/history_provider.dart';
import './screens/product_items_screen/providers/product_items_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseAPI().initPushAndLocalNotifications('test_topic');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => TabsProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => ProductItemsProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        locale: const Locale('ar', 'YE'),
        supportedLocales: const [
          Locale('ar', 'YE'),
        ],
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        home: TabsScreen(),
        routes: {
          HistoryScreen.routeName: (ctx) => ChangeNotifierProvider.value(
                value: HistoryProvider(),
                child: const HistoryScreen(),
              ),
          ProductItemsScreen.routeName: (ctx) => ChangeNotifierProvider.value(
                value: ProductItemsProvider(),
                child: const ProductItemsScreen(),
              ),
        },
      ),
    );
  }
}
