import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../theme/sellers_theme.dart';
import '../../../providers/auth_provider.dart';
import '../../../views/widgets/auth_button.dart';
import '../../../views/widgets/auth_field.dart';
import '../providers/login_provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context, listen: false);

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Theme(
        data: ThemeData(
          primaryColor: SellersTheme.colors.primaryColor,
        ),
        child: Scaffold(
          backgroundColor: SellersTheme.colors.backgroundColor,
          body: SafeArea(
            child: Form(
              key: loginProvider.formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      'تسجيل الدخول',
                      style: SellersTheme.textStyles.titleLarge,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    AuthField(
                      decoration:
                          SellersInputDecoration.login(label: 'اسم المستخدم'),
                      inputType: TextInputType.text,
                      controller: loginProvider.usernameController,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    AuthField(
                      decoration:
                          SellersInputDecoration.login(label: 'كلمة المرور'),
                      inputType: TextInputType.text,
                      controller: loginProvider.passwordController,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Consumer<LoginProvider>(
                        builder: (context, loginConsumer, _) {
                      return AuthButton(
                          label: 'دخول',
                          onClick: loginConsumer.isLoading
                              ? null
                              : () => loginProvider.login(context: context));
                    }),
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
                          width: 7,
                        ),
                        TextButton(
                          child: Text(
                            'إنشاء حساب',
                            style: SellersTheme.textStyles.titleMedium,
                          ),
                          onPressed: () =>
                              Provider.of<AuthProvider>(context, listen: false)
                                  .switchScreen('signUp'),
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
      ),
    );
  }
}
