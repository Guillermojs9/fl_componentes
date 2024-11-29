import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      onChanged: (value){
        print("valor: ${value}");
      },
      validator: (value){
        if(value!.length< 3){
          return "Mínimo 3 caracteres";
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: "Nombre y apellidos",
        labelText: "Nombre y apellidos",
        helperText: "Solo letras",
        suffixIcon: const Icon(Icons.person),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5)
        )
      ),
    );
  }
}