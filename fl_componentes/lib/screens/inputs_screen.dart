import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Forms: Inputs"),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextFormField(
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
                    //borderRadius: BorderRadius.only(bottomRight: Radius.circular(10))
                  )
                ),
              )
            ],
          ),
        ));
  }
}
