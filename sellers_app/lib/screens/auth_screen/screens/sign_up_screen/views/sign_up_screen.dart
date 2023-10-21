import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../theme/sellers_theme.dart';
import '../../../views/widgets/auth_field.dart';
import '../../../views/widgets/auth_button.dart';
import '../../../providers/auth_provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'قم بتعبئة البيانات التالية',
                    style: SellersTheme.textStyles.titleLarge,
                    selectionColor:
                        SellersTheme.textSelectionTheme.selectionColor,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  AuthField(
                    decoration:
                        SellersInputDecoration.login(label: 'اسم المستخدم'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AuthField(
                    decoration:
                        SellersInputDecoration.login(label: 'الاسم الكامل'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AuthField(
                    decoration:
                        SellersInputDecoration.login(label: 'رقم الهاتف'),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  AuthField(
                    decoration:
                        SellersInputDecoration.login(label: 'كلمة المرور'),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  AuthButton(label: 'دخول', onClick: () {}),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'هل تمتلك حساب بالفعل؟',
                        style: SellersTheme.textStyles.titleMedium.copyWith(
                          color: SellersTheme.colors.displayTextColor,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      TextButton(
                        child: Text(
                          'إنشاء حساب',
                          style: SellersTheme.textStyles.titleMedium,
                        ),
                        onPressed: () =>
                            Provider.of<AuthProvider>(context, listen: false)
                                .switchScreen('login'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
