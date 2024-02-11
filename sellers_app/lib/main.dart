// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';

// import './screens/tabs_screen/views/tabs_screen.dart';
// import './screens/history_screen/views/history_screen.dart';
// import './screens/product_items_screen/views/product_items_screen.dart';
// import './screens/tabs_screen/providers/tabs_provider.dart';
// import './screens/history_screen/providers/history_provider.dart';
// import './screens/product_items_screen/providers/product_items_provider.dart';
// import './screens/new_product_screen/views/new_product_screen.dart';
// import './screens/new_product_screen/providers/new_product_provider.dart';
// import './screens/auth_screen/views/auth_screen.dart';
// import './screens/auth_screen/providers/auth_provider.dart';
// import './screens/enter_image_screen/views/enter_image_screen.dart';
// import './screens/enter_image_screen/providers/enter_image_provider.dart';
// import './screens/enter_address_screen/views/enter_address_screen.dart';
// import './screens/enter_address_screen/providers/enter_address_screen.dart';
// import './providers/user_provider.dart';
// import './screens/splash_screen.dart';
// import './theme/sellers_theme.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   await dotenv.load(fileName: "lib/.env");
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(
//           create: (ctx) => UserProvider(),
//         ),
//         ChangeNotifierProvider(
//           create: (ctx) => TabsProvider(),
//         ),
//         ChangeNotifierProvider(
//           create: (ctx) => ProductItemsProvider(),
//         ),
//       ],
//       child: Consumer<UserProvider>(builder: (context, userConsumer, _) {
//         return MaterialApp(
//           title: 'Flutter Demo',
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData(
//             primaryColor: SellersTheme.colors.primaryColor,
//             colorScheme: ColorScheme.fromSwatch(
//               brightness: Brightness.light,
//             ).copyWith(
//               secondary: SellersTheme.colors.primaryColor,
//             ),
//           ),
//           locale: const Locale('ar', 'YE'),
//           supportedLocales: const [
//             Locale('ar', 'YE'),
//           ],
//           localizationsDelegates: const [
//             GlobalMaterialLocalizations.delegate,
//             GlobalWidgetsLocalizations.delegate,
//             GlobalCupertinoLocalizations.delegate,
//           ],
//           home: userConsumer.isAuth
//               ? Builder(builder: (context) => TabsScreen())
//               : FutureBuilder(
//                   future: Future.delayed(const Duration(milliseconds: 2000),
//                       () => userConsumer.tryAutoLogin()),
//                   builder: (ctx, authResultSnapshot) =>
//                       authResultSnapshot.connectionState ==
//                               ConnectionState.waiting
//                           ? const SplashScreen()
//                           : ChangeNotifierProvider.value(
//                               value: AuthProvider(), child: const AuthScreen()),
//                 ),
//           routes: {
//             HistoryScreen.routeName: (ctx) => ChangeNotifierProvider.value(
//                   value: HistoryProvider(),
//                   child: const HistoryScreen(),
//                 ),
//             ProductItemsScreen.routeName: (ctx) => ChangeNotifierProvider.value(
//                   value: ProductItemsProvider(),
//                   child: const ProductItemsScreen(),
//                 ),
//             NewProductScreen.routeName: (ctx) => ChangeNotifierProvider.value(
//                   value: NewProductProvider(),
//                   child: const NewProductScreen(),
//                 ),
//             EnterImageScreen.routeName: (ctx) => ChangeNotifierProvider.value(
//                   value: EnterImageProvider(context),
//                   child: const EnterImageScreen(),
//                 ),
//             EnterAddressScreen.routeName: (ctx) => ChangeNotifierProvider.value(
//                   value: EnterAddressProvider(),
//                   child: const EnterAddressScreen(),
//                 ),
//           },
//         );
//       }),
//     );
//   }
// }

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sellers_app/screens/order_details/views/order_details_screen.dart';
import 'package:sellers_app/screens/order_details/providers/order_details_provider.dart';
import 'package:sellers_app/screens/tabs_screen/order_screen/views/order_screen.dart';
import 'package:sellers_app/screens/tabs_screen/order_screen/providers/order_provider.dart';

import './screens/tabs_screen/views/tabs_screen.dart';
import './screens/history_screen/views/history_screen.dart';
import './screens/product_items_screen/views/product_items_screen.dart';
import './screens/tabs_screen/providers/tabs_provider.dart';
import './screens/history_screen/providers/history_provider.dart';
import './screens/product_items_screen/providers/product_items_provider.dart';
import './screens/new_product_screen/views/new_product_screen.dart';
import './screens/new_product_screen/providers/new_product_provider.dart';
import './screens/auth_screen/views/auth_screen.dart';
import './screens/auth_screen/providers/auth_provider.dart';
import './screens/enter_image_screen/views/enter_image_screen.dart';
import './screens/enter_image_screen/providers/enter_image_provider.dart';
import './screens/enter_address_screen/views/enter_address_screen.dart';
import './screens/enter_address_screen/providers/enter_address_screen.dart';
import './providers/user_provider.dart';
import './screens/splash_screen.dart';
import 'package:sellers_app/screens/shop_info/views/shop_info_screen.dart';
import './theme/sellers_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await dotenv.load(fileName: "lib/.env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => UserProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => TabsProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => ProductItemsProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => OrderDetailsProvider(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => OrdersProvider(),
        ),
      ],
      child: Consumer<UserProvider>(builder: (context, userConsumer, _) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: SellersTheme.colors.primaryColor,
            colorScheme: ColorScheme.fromSwatch(
              brightness: Brightness.light,
            ).copyWith(
              secondary: SellersTheme.colors.primaryColor,
            ),
          ),
          locale: const Locale('ar', 'YE'),
          supportedLocales: const [
            Locale('ar', 'YE'),
          ],
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          // Skip authentication and go to TabsScreen directly
          home: OrdersScreen(),
          routes: {
            HistoryScreen.routeName: (ctx) => ChangeNotifierProvider.value(
                  value: HistoryProvider(),
                  child: const HistoryScreen(),
                ),
            ProductItemsScreen.routeName: (ctx) => ChangeNotifierProvider.value(
                  value: ProductItemsProvider(),
                  child: const ProductItemsScreen(),
                ),
            NewProductScreen.routeName: (ctx) => ChangeNotifierProvider.value(
                  value: NewProductProvider(),
                  child: const NewProductScreen(),
                ),
            EnterImageScreen.routeName: (ctx) => ChangeNotifierProvider.value(
                  value: EnterImageProvider(context),
                  child: const EnterImageScreen(),
                ),
            EnterAddressScreen.routeName: (ctx) => ChangeNotifierProvider.value(
                  value: EnterAddressProvider(),
                  child: const EnterAddressScreen(),
                ),
          },
        );
      }),
    );
  }
}
