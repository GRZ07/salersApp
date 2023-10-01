
import 'package:flutter/material.dart';
import 'package:sellers_app/screens/auth_screen/views/login_screen.dart';
import 'package:sellers_app/screens/auth_screen/views/signup_screen.dart';
void main() {
  runApp(
    MyApp(),
    
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignupScreen(),
    );
  }
}



















// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         textSelectionTheme: const TextSelectionThemeData(
//                   cursorColor: Color.fromARGB(255, 76, 175, 80),
//                   selectionColor: Color.fromARGB(79, 76, 175, 80),
//                   selectionHandleColor: Color.fromARGB(255, 76, 175, 80),
//                 ),
//                 textButtonTheme: TextButtonThemeData(
//                   style: ButtonStyle(
//                     foregroundColor: MaterialStateColor.resolveWith(
//                       (states) => const Color.fromARGB(255, 76, 175, 80),
//                     ),
//                     textStyle: MaterialStateProperty.all(
//                       const TextStyle(
//                         fontFamily: 'Almarai',
//                         fontSize: 13,
//                         color: Color.fromARGB(255, 76, 175, 80),
//                       ),
//                     ),
//                   ),
//                 ),
//                 primaryColor: const Color.fromARGB(255, 76, 175, 80),
//                 textTheme: const TextTheme(
//                   titleLarge: TextStyle(
//                     fontFamily: 'Alexandria',
//                     fontSize: 16,
//                     fontWeight: FontWeight.w400,
//                     color: Color.fromARGB(255, 76, 175, 80),
//                   ),
//                   titleMedium: TextStyle(
//                     fontFamily: 'Alexandria',
//                     fontSize: 13,
//                     color: Color.fromARGB(255, 76, 175, 80),
//                   ),
//                   displayLarge: TextStyle(
//                     fontFamily: 'Alexandria',
//                     fontSize: 10,
//                     color: Color.fromARGB(255, 117, 117, 117),
//                   ),
//                   displayMedium: TextStyle(
//                     fontFamily: 'Alexandria',
//                     fontSize: 8,
//                     color: Color.fromARGB(255, 117, 117, 117),
//                   ),
//                   labelSmall: TextStyle(
//                     fontFamily: 'Alexandria',
//                     fontSize: 10,
//                     color: Color.fromARGB(255, 117, 117, 117),
//                   ),
//                 ),
//                 appBarTheme: const AppBarTheme(
//                   titleTextStyle: TextStyle(
//                     fontSize: 20,
//                     color: Color.fromARGB(255, 76, 175, 80),
//                   ),
//                 ),
//                 colorScheme: ColorScheme.fromSwatch(
//                   brightness: Brightness.light,
//                 ).copyWith(
//                   secondary: const Color.fromARGB(255, 158, 158, 158),
//                   background: const Color.fromARGB(255, 248, 250, 255),
//                 ),

//     ));
//   }
// }
