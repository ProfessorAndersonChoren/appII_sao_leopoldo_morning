import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextInputType inputType;
  final TextInputAction textInputAction;
  final bool isPassword;
  final String? Function(String?) validator;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    required this.label,
    required this.inputType,
    required this.validator,
    this.textInputAction = TextInputAction.next,
    this.isPassword = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        keyboardType: inputType,
        obscureText: isPassword,
        textInputAction: textInputAction,
      ),
    );
  }
}
