import 'package:flutter/material.dart';

class MyField extends StatelessWidget {
  final InputDecoration decoration;
  final TextInputType inputType;
  final TextEditingController controller;
  final bool? obscureText;
  final TextInputAction inputAction;
  final void Function()? onSubmitted;

  const MyField({
    required this.decoration,
    required this.inputType,
    required this.controller,
    required this.inputAction,
    this.obscureText,
    this.onSubmitted,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText != null ? obscureText! : false,
      controller: controller,
      keyboardType: inputType,
      decoration: decoration,
      textInputAction: inputAction,
      onFieldSubmitted: onSubmitted != null ? (_) => onSubmitted!() : null,
      validator: (value) => value!.trim().isEmpty ? 'هذا الحقل مطلوب' : null,
    );
  }
}
