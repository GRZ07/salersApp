import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final InputDecoration decoration;
  final TextInputType inputType;
  final TextEditingController controller;
  final bool? obscureText;

  const AuthField({
    required this.decoration,
    required this.inputType,
    required this.controller,
    this.obscureText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText != null ? obscureText! : false,
      controller: controller,
      keyboardType: inputType,
      decoration: decoration,
      validator: (value) => value!.trim().isEmpty ? 'هذا الحقل مطلوب' : null,
    );
  }
}
