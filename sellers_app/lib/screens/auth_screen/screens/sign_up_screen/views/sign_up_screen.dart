import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../theme/sellers_theme.dart';
import '../../../../../widgets/my_field.dart';
import '../../../../../widgets/my_button.dart';
import '../../../providers/auth_provider.dart';
import '../providers/sign_up_provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final signUpProvider = Provider.of<SignUpProvider>(context, listen: false);

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
              key: signUpProvider.formKey,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
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
                      MyField(
                        decoration:
                            SellersInputDecoration.login(label: 'اسم المستخدم'),
                        inputType: TextInputType.text,
                        controller: signUpProvider.usernameController,
                        inputAction: TextInputAction.next,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      MyField(
                        decoration:
                            SellersInputDecoration.login(label: 'الاسم الكامل'),
                        inputType: TextInputType.text,
                        controller: signUpProvider.fullNameController,
                        inputAction: TextInputAction.next,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      MyField(
                        decoration:
                            SellersInputDecoration.login(label: 'رقم الهاتف'),
                        inputType: TextInputType.number,
                        controller: signUpProvider.phoneNumberController,
                        inputAction: TextInputAction.next,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Consumer<SignUpProvider>(
                          builder: (context, signUpConsumer, _) {
                        return MyField(
                          decoration: SellersInputDecoration.login(
                              label: 'كلمة المرور'),
                          inputType: TextInputType.text,
                          controller: signUpProvider.passwordController,
                          inputAction: TextInputAction.go,
                          obscureText: true,
                          onSubmitted: signUpConsumer.isLoading
                              ? null
                              : () => signUpProvider.signUp(context: context),
                        );
                      }),
                      const SizedBox(
                        height: 25,
                      ),
                      Consumer<SignUpProvider>(
                        builder: (context, signUpConsumer, _) {
                          return MyButton(
                            onClick: signUpConsumer.isLoading
                                ? null
                                : () {
                                    // Remove focus from all text fields
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                    signUpProvider.signUp(context: context);
                                  },
                            child: signUpConsumer.isLoading
                                ? const Center(
                                    child: SizedBox(
                                      height: 25,
                                      width: 25,
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                : Text(
                                    'دخول',
                                    style: SellersTheme.textStyles.titleLarge
                                        .copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                          );
                        },
                      ),
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
                              'تسجيل دخول',
                              style: SellersTheme.textStyles.titleMedium,
                            ),
                            onPressed: () => Provider.of<AuthProvider>(context,
                                    listen: false)
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
        ),
      ),
    );
  }
}
