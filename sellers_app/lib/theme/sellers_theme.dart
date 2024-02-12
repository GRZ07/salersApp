// import 'package:flutter/material.dart';

// class SellersTheme {
//   // Border radius
//   static const double radius = 8;

//   // Colors
//   static final SellersColors colors = SellersColors();

//   // Gradients
//   static final SellersGradients gradients = SellersGradients();

//   // Text
//   static final SellersTextStyles textStyles = SellersTextStyles();

//   // Text selection
//   static const textSelectionTheme = TextSelectionThemeData(
//     cursorColor: Color(0xff599873),
//     selectionColor: Color.fromRGBO(89, 152, 115, 0.3),
//     selectionHandleColor: Color(0xff599873),
//   );

//   // Text button
//   static final textButtonTheme = TextButtonThemeData(
//     style: ButtonStyle(
//       foregroundColor: MaterialStateColor.resolveWith(
//         (states) => const Color(0xff599873),
//       ),
//       textStyle: MaterialStateProperty.all(
//         const TextStyle(
//           fontFamily: 'Almarai',
//           fontSize: 13,
//           color: Color(0xff599873),
//         ),
//       ),
//     ),
//   );
// }

// class SellersColors {
//   Color primaryColor = const Color(0xff599873);
//   Color primaryColorTransparent = const Color.fromRGBO(16, 94, 177, 0.5);
//   Color firstSecondaryColor = const Color.fromARGB(255, 81, 143, 234);
//   Color secondSecondaryColor = const Color.fromARGB(255, 186, 134, 32);
//   Color successColor = const Color.fromARGB(255, 0, 109, 62);
//   Color errorColor = const Color.fromARGB(255, 155, 55, 77);
//   Color backgroundColor = const Color.fromARGB(255, 248, 250, 255);
//   Color fieldFillColor = const Color.fromARGB(255, 245, 245, 255);
//   Color displayTextColor = const Color.fromARGB(255, 34, 46, 39);
//   Color dialogNoteColor = const Color.fromARGB(255, 126, 126, 126);
//   Color fieldContentColor = const Color(0xff599873);
//   Color fieldLabel = Colors.grey;
// }

// class SellersGradients {
//   LinearGradient horizontalGradient = const LinearGradient(
//     colors: [
//       Color.fromRGBO(26, 112, 176, 0.2),
//       Color.fromRGBO(26, 112, 176, 0.8),
//     ],
//     begin: Alignment.centerLeft,
//     end: Alignment.centerRight,
//     stops: [0, 1],
//   );
//   LinearGradient verticalGradient = const LinearGradient(
//     colors: [
//       Color.fromRGBO(26, 112, 176, 0.2),
//       Color.fromRGBO(26, 112, 176, 0.8),
//     ],
//     begin: Alignment.topCenter,
//     end: Alignment.bottomCenter,
//     stops: [0, 1],
//   );
// }

// class SellersTextStyles {
//   TextStyle titleLarge = const TextStyle(
//     fontFamily: 'Alexandria',
//     fontSize: 16,
//     fontWeight: FontWeight.w400,
//     color: Color(0xff599873),
//   );
//   TextStyle titleMedium = const TextStyle(
//     fontFamily: 'Alexandria',
//     fontSize: 13,
//     color: Color(0xff599873),
//   );
//   TextStyle display = const TextStyle(
//     fontFamily: 'Alexandria',
//     fontSize: 10,
//     color: Color.fromARGB(255, 117, 117, 117),
//   );
//   TextStyle displayMedium = const TextStyle(
//     fontFamily: 'Alexandria',
//     fontSize: 8,
//     color: Color.fromARGB(255, 117, 117, 117),
//   );
//   TextStyle labelSmall = const TextStyle(
//     fontFamily: 'Alexandria',
//     fontSize: 10,
//     color: Color.fromARGB(255, 117, 117, 117),
//   );
//   TextStyle fieldError = TextStyle(
//     fontFamily: 'Alexandria',
//     fontSize: 8,
//     color: SellersTheme.colors.errorColor,
//   );
//   TextStyle fieldLabel = TextStyle(
//     fontFamily: 'Alexandria',
//     fontSize: 13,
//     color: SellersTheme.colors.fieldLabel,
//   );
//   TextStyle dialogLabel = TextStyle(
//     fontFamily: 'Alexandria',
//     fontSize: 13,
//     color: SellersTheme.colors.displayTextColor,
//     decoration: TextDecoration.none,
//     fontWeight: FontWeight.w200,
//     height: 2,
//   );
//   TextStyle dialogNote = TextStyle(
//     fontFamily: 'Alexandria',
//     fontSize: 10,
//     color: SellersTheme.colors.dialogNoteColor,
//     decoration: TextDecoration.none,
//     fontWeight: FontWeight.w200,
//     height: 2,
//   );
//   TextStyle dialogButtonText = const TextStyle(
//     fontFamily: 'Alexandria',
//     fontSize: 10,
//     fontWeight: FontWeight.w100,
//     decoration: TextDecoration.none,
//     color: Colors.white,
//   );
//   TextStyle fieldContent = TextStyle(
//     fontFamily: 'Alexandria',
//     fontSize: 13,
//     color: SellersTheme.colors.fieldContentColor,
//     decoration: TextDecoration.none,
//   );
// }

// class SellersInputDecoration extends InputDecoration {
//   // Login credentials fields
//   SellersInputDecoration.primary({required String label})
//       : super(
//           labelText: label,
//           errorStyle: SellersTheme.textStyles.fieldError,
//           floatingLabelBehavior: FloatingLabelBehavior.never,
//           labelStyle: SellersTheme.textStyles.fieldLabel,
//           border: const OutlineInputBorder(
//               borderSide: BorderSide.none,
//               borderRadius:
//                   BorderRadius.all(Radius.circular(SellersTheme.radius))),
//           filled: true,
//           fillColor: SellersTheme.colors.fieldFillColor,
//         );
// // Form fields
//   SellersInputDecoration.form({required String label, required Widget icon})
//       : super(
//           labelText: label,
//           errorStyle: SellersTheme.textStyles.fieldError,
//           floatingLabelBehavior: FloatingLabelBehavior.never,
//           suffixIcon: Padding(
//             padding: const EdgeInsets.all(8),
//             child: icon,
//           ),
//           labelStyle: SellersTheme.textStyles.fieldLabel,
//           border: const OutlineInputBorder(
//               borderSide: BorderSide.none,
//               borderRadius:
//                   BorderRadius.all(Radius.circular(SellersTheme.radius))),
//           filled: true,
//           fillColor: SellersTheme.colors.fieldFillColor,
//         );

//   // Filters fields
//   SellersInputDecoration.filter({required String label})
//       : super(
//           labelText: label,
//           errorStyle: SellersTheme.textStyles.fieldError,
//           floatingLabelBehavior: FloatingLabelBehavior.never,
//           suffixIcon: Padding(
//             padding: const EdgeInsets.all(8),
//             child: Image.asset(
//               'lib/assets/icons/search.png',
//               color: Colors.grey,
//               height: 15,
//               width: 15,
//             ),
//           ),
//           labelStyle: SellersTheme.textStyles.fieldLabel,
//           border: const OutlineInputBorder(
//               borderSide: BorderSide.none,
//               borderRadius:
//                   BorderRadius.all(Radius.circular(SellersTheme.radius))),
//           filled: true,
//           fillColor: SellersTheme.colors.fieldFillColor,
//         );

//   SellersInputDecoration.dropdown(
//       {required String label, required bool enabled})
//       : super(
//             labelText: label,
//             enabled: enabled,
//             floatingLabelBehavior: FloatingLabelBehavior.never,
//             labelStyle: SellersTheme.textStyles.fieldLabel,
//             border: const OutlineInputBorder(
//               borderSide: BorderSide.none,
//               borderRadius:
//                   BorderRadius.all(Radius.circular(SellersTheme.radius)),
//             ),
//             filled: true,
//             fillColor: const Color.fromARGB(255, 245, 245, 255));
// }

import 'package:flutter/material.dart';

class SellersTheme {
  // Border radius
  static const double radius = 8;

  // Colors
  static final SellersColors colors = SellersColors();

  // Gradients
  static final SellersGradients gradients = SellersGradients();

  // Text
  static final SellersTextStyles textStyles = SellersTextStyles();

  // Text selection
  static const textSelectionTheme = TextSelectionThemeData(
    cursorColor: Color(0xff599873),
    selectionColor: Color.fromRGBO(89, 152, 115, 0.3),
    selectionHandleColor: Color(0xff599873),
  );

  // Text button
  static final textButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateColor.resolveWith(
        (states) => const Color(0xff599873),
      ),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontFamily: 'Almarai',
          fontSize: 13,
          color: Color(0xff599873),
        ),
      ),
    ),
  );
}

class SellersColors {
  Color primaryColor = const Color(0xff599873);
  Color primaryColorTransparent = const Color.fromRGBO(16, 94, 177, 0.5);
  Color firstSecondaryColor = const Color.fromARGB(255, 81, 143, 234);
  Color secondSecondaryColor = const Color.fromARGB(255, 186, 134, 32);
  Color successColor = const Color.fromARGB(255, 0, 109, 62);
  Color errorColor = const Color.fromARGB(255, 155, 55, 77);
  Color backgroundColor = const Color.fromARGB(255, 248, 250, 255);
  Color fieldFillColor = const Color.fromARGB(255, 245, 245, 255);
  Color displayTextColor = const Color.fromARGB(255, 34, 46, 39);
  Color dialogNoteColor = const Color.fromARGB(255, 126, 126, 126);
  Color fieldContentColor = const Color(0xff599873);
  Color fieldLabel = Colors.grey;
}

class SellersGradients {
  LinearGradient horizontalGradient = const LinearGradient(
    colors: [
      Color.fromRGBO(26, 112, 176, 0.2),
      Color.fromRGBO(26, 112, 176, 0.8),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0, 1],
  );
  LinearGradient verticalGradient = const LinearGradient(
    colors: [
      Color.fromRGBO(26, 112, 176, 0.2),
      Color.fromRGBO(26, 112, 176, 0.8),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0, 1],
  );
}

class SellersTextStyles {
  TextStyle titleLarge = const TextStyle(
    fontFamily: 'Alexandria',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Color(0xff599873),
  );
  TextStyle listDividerLabel = TextStyle(
    fontFamily: 'Alexandria',
    fontSize: 10,
    color: SellersTheme.colors.primaryColor,
    decoration: TextDecoration.none,
  );
  TextStyle titleMedium = const TextStyle(
    fontFamily: 'Alexandria',
    fontSize: 13,
    color: Color(0xff599873),
  );
  TextStyle display = const TextStyle(
    fontFamily: 'Alexandria',
    fontSize: 10,
    color: Color.fromARGB(255, 117, 117, 117),
  );
  TextStyle displayMedium = const TextStyle(
    fontFamily: 'Alexandria',
    fontSize: 8,
    color: Color.fromARGB(255, 117, 117, 117),
  );
  TextStyle labelSmall = const TextStyle(
    fontFamily: 'Alexandria',
    fontSize: 10,
    color: Color.fromARGB(255, 117, 117, 117),
  );
  TextStyle fieldError = TextStyle(
    fontFamily: 'Alexandria',
    fontSize: 8,
    color: SellersTheme.colors.errorColor,
  );
  TextStyle fieldLabel = TextStyle(
    fontFamily: 'Alexandria',
    fontSize: 13,
    color: SellersTheme.colors.fieldLabel,
  );
  TextStyle dialogLabel = TextStyle(
    fontFamily: 'Alexandria',
    fontSize: 13,
    color: SellersTheme.colors.displayTextColor,
    decoration: TextDecoration.none,
    fontWeight: FontWeight.w200,
    height: 2,
  );
  TextStyle dialogNote = TextStyle(
    fontFamily: 'Alexandria',
    fontSize: 10,
    color: SellersTheme.colors.dialogNoteColor,
    decoration: TextDecoration.none,
    fontWeight: FontWeight.w200,
    height: 2,
  );
  TextStyle dialogButtonText = const TextStyle(
    fontFamily: 'Alexandria',
    fontSize: 10,
    fontWeight: FontWeight.w100,
    decoration: TextDecoration.none,
    color: Colors.white,
  );
  TextStyle fieldContent = TextStyle(
    fontFamily: 'Alexandria',
    fontSize: 13,
    color: SellersTheme.colors.fieldContentColor,
    decoration: TextDecoration.none,
  );
}

class SellersInputDecoration extends InputDecoration {
  // Login credentials fields
  SellersInputDecoration.primary({required String label})
      : super(
          labelText: label,
          errorStyle: SellersTheme.textStyles.fieldError,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelStyle: SellersTheme.textStyles.fieldLabel,
          border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius:
                  BorderRadius.all(Radius.circular(SellersTheme.radius))),
          filled: true,
          fillColor: SellersTheme.colors.fieldFillColor,
        );
// Form fields
  SellersInputDecoration.form({required String label, required Widget icon})
      : super(
          labelText: label,
          errorStyle: SellersTheme.textStyles.fieldError,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8),
            child: icon,
          ),
          labelStyle: SellersTheme.textStyles.fieldLabel,
          border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius:
                  BorderRadius.all(Radius.circular(SellersTheme.radius))),
          filled: true,
          fillColor: SellersTheme.colors.fieldFillColor,
        );

  // Filters fields
  SellersInputDecoration.filter({required String label})
      : super(
          labelText: label,
          errorStyle: SellersTheme.textStyles.fieldError,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              'lib/assets/icons/search.png',
              color: Colors.grey,
              height: 15,
              width: 15,
            ),
          ),
          labelStyle: SellersTheme.textStyles.fieldLabel,
          border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius:
                  BorderRadius.all(Radius.circular(SellersTheme.radius))),
          filled: true,
          fillColor: SellersTheme.colors.fieldFillColor,
        );

  SellersInputDecoration.dropdown(
      {required String label, required bool enabled})
      : super(
            labelText: label,
            enabled: enabled,
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelStyle: SellersTheme.textStyles.fieldLabel,
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius:
                  BorderRadius.all(Radius.circular(SellersTheme.radius)),
            ),
            filled: true,
            fillColor: const Color.fromARGB(255, 245, 245, 255));
}






