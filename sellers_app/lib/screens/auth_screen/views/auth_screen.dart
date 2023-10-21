import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/auth_provider.dart';
import './../screens/login_screen/views/login_screen.dart';
import '../screens/login_screen/providers/login_provider.dart';
import '../screens/sign_up_screen/views/sign_up_screen.dart';
import '../screens/sign_up_screen/providers/sign_up_provider.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider.of<AuthProvider>(context).display == 'login'
        ? ChangeNotifierProvider.value(
            value: LoginProvider(), child: const LoginScreen())
        : ChangeNotifierProvider.value(
            value: SignUpProvider(), child: const SignUpScreen());
  }
}
