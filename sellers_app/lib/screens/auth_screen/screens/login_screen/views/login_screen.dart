import 'package:flutter/material.dart';

import '../../../../../theme/sellers_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'تسجيل الدخول',
                style: SellersTheme.textStyles.titleLarge,
              ),
              const SizedBox(
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
                        hintText: 'اسم المستخدم',
                        hintStyle: SellersTheme.textStyles.fieldLabel,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
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
                        hintText: 'كلمة المرور',
                        hintStyle: SellersTheme.textStyles.fieldLabel,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: SellersTheme.colors.primaryColor, // Button color
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
              const SizedBox(
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
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'إنشاء حساب',
                    style: SellersTheme.textStyles.titleMedium,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
