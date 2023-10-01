import 'package:flutter/material.dart';
import 'package:sellers_app/theme/sellers_theme.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Theme(
        data: ThemeData(
          primaryColor: SellersTheme.colors.primaryColor,
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
                        'assets/profile.png',
                        height: 300,
                      ),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'قم بتعبئة البيانات التالية',
                      style: SellersTheme.textStyles.titleLarge,
                      selectionColor:
                          SellersTheme.textSelectionTheme.selectionColor,
                    ),

                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Container(
                        decoration: BoxDecoration(
                          color: SellersTheme.colors.fieldFillColor,
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
                            obscureText: false,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'رقم الهاتف',
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
                              hintText: 'كلمة السر',
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
                        decoration: BoxDecoration(
                          color: SellersTheme.colors.fieldFillColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'اسم وعنوان المحل',
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
                        decoration: BoxDecoration(
                          color: SellersTheme.colors.fieldFillColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ElevatedButton(
                          onPressed: () => () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              SellersTheme.colors.fieldFillColor,
                            ),
                            minimumSize: MaterialStateProperty.all<Size>(
                              Size.fromHeight(
                                48.0,
                              ), // Adjust the height as needed
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceBetween, // Align children to start and end
                            children: [
                              Text(
                                'ادرج صورة',
                                style: TextStyle(
                                  color: SellersTheme.colors.primaryColor,
                                  fontSize: 13, // Match the text style
                                ),
                              ),
                              Icon(
                                Icons.image_outlined,
                                color: SellersTheme.colors.primaryColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    // ... Previous code ...

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: SellersTheme.colors.fieldFillColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ElevatedButton(
                            onPressed: () => () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                SellersTheme.colors.fieldFillColor,
                              ),
                              minimumSize: MaterialStateProperty.all<Size>(
                                Size.fromHeight(
                                  48.0,
                                ), // Adjust the height as needed
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceBetween, // Align children to start and end
                              children: [
                                Text(
                                  'حدد العنوان على الخريطة',
                                  style: TextStyle(
                                    color: SellersTheme.colors.primaryColor,
                                    fontSize: 13, // Match the text style
                                  ),
                                ),
                                Icon(
                                  Icons.map_outlined,
                                  color: SellersTheme.colors.primaryColor,
                                ),
                              ],
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
                      child: GestureDetector(
                        onTap: () {
                          // Add your time picker functionality here
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: SellersTheme.colors.fieldFillColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              // Add your time picker functionality here
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                SellersTheme.colors.fieldFillColor,
                              ),
                              minimumSize: MaterialStateProperty.all<Size>(
                                Size.fromHeight(
                                  48.0,
                                ), // Adjust the height as needed
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceBetween, // Align children to start and end
                              children: [
                                Text(
                                  ' حدد وقت فتح وإغلاق المتجر',
                                  style: TextStyle(
                                    color: SellersTheme.colors.primaryColor,
                                    fontSize: 13, // Match the text style
                                  ),
                                ),
                                Icon(
                                  Icons.access_time,
                                  color: SellersTheme.colors.primaryColor,
                                ),
                              ],
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
                          color: SellersTheme.colors.primaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'تسجيل',
                            style: SellersTheme.textStyles.titleLarge.copyWith(
                              color: Colors.white,
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
                          ' هل تمتلك حساب بالفعل؟',
                          style: SellersTheme.textStyles.titleMedium.copyWith(
                            color: SellersTheme.colors.displayTextColor,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        Text(
                          '  تسجيل الدخول ',
                          style: SellersTheme.textStyles.titleMedium.copyWith(
                            color: SellersTheme.colors.firstSecondaryColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
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
