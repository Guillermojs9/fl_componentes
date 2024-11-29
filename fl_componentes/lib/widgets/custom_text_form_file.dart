import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.suffixIcon,
    this.keyboardType, required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) {
        print("valor: ${value}");
      },
      validator: (value) {
        if (value!.length < 3) {
          return "Mínimo 3 caracteres";
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          suffixIcon: Icon(suffixIcon),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    );
  }
}
