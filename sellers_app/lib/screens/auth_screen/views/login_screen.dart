import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sellers_app/theme/sellers_theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // Set text direction to RTL
      child: Theme(
        data: ThemeData(
          primaryColor: SellersTheme.colors.primaryColor,
          // Add more theme properties as needed
        ),
        child: Scaffold(
          backgroundColor: SellersTheme.colors.backgroundColor,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        'assets/phone.png',
                        height: 300,
                      ),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'تسجيل الدخول',
                      style: GoogleFonts.robotoCondensed(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' نشكركم على ثقتكم بخدماتنا',
                      style: SellersTheme.textStyles.titleLarge,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        decoration: BoxDecoration(
                           color: SellersTheme.colors.fieldFillColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'الإسم',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        decoration: BoxDecoration(
                          color: SellersTheme.colors.fieldFillColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: ' كلمة السر',
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color:
                              SellersTheme.colors.primaryColor, // Button color
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'دخول',
                            style: SellersTheme.textStyles.titleLarge.copyWith(
                              color: Colors.white, // Text color
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'لا تمتلك حساب؟',
                          style: SellersTheme.textStyles.titleMedium.copyWith(
                            color: SellersTheme.colors.displayTextColor,
                          ),
                          textAlign: TextAlign.right, // Apply textAlign here
                        ),
                        // You can add any other widgets here if needed
                        Text(
                          '  إنشاء حساب ',
                          style: SellersTheme.textStyles.titleMedium.copyWith(
                            color: SellersTheme.colors
                                .firstSecondaryColor, // Use primaryColor from SellersTheme.colors
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}










// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:sellers_app/theme/sellers_theme.dart';

// class AuthScreen extends StatefulWidget {
//   const AuthScreen({Key? key});

//   @override
//   State<AuthScreen> createState() => _AuthScreenState();
// }

// class _AuthScreenState extends State<AuthScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: SellersTheme.colors.backgroundColor,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ClipRRect(
//                   child: Image.asset(
//                     'assets/phone1.jpg',
//                     height: 300,
//                   ),
//                   borderRadius: BorderRadius.circular(32),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Text(
//                   'تسجيل الدخول',
//                   style: GoogleFonts.robotoCondensed(
//                       fontSize: 38, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   ' تمتع بأفضل تجربة لشراء جهازك',
//                   style: SellersTheme.textStyles.titleLarge,
//                 ),
//                 SizedBox(
//                   height: 50,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20),
//                       child: TextField(
//                         textAlign: TextAlign.right,
//                         decoration: InputDecoration(
//                           hintText: 'الإسم',
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: SellersTheme.colors.fieldFillColor,
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20),
//                       child: TextField(
//                         obscureText: true,
//                         textAlign: TextAlign.right,
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           hintText: ' كلمة السر',
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25),
//                   child: Container(
//                     padding: EdgeInsets.all(16),
//                     decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 63, 245, 160),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Center(
//                       child: Text(
//                         'دخول',
//                       style: SellersTheme.textStyles.titleLarge,),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
