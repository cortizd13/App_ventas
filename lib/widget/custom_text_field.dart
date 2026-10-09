import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String placeholder;
  final bool isPassword;
  final TextInputType keyboard;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.placeholder,
    required this.controller,
    this.isPassword = false,
    this.keyboard = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      keyboardType: keyboard,
      decoration: InputDecoration(
        labelText:placeholder,
        border: OutlineInputBorder()
        ),
    );
  }
}
