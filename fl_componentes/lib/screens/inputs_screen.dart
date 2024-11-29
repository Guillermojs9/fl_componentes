import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Forms: Inputs"),
        ),
        body: const SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
                CustomTextFormField(
                hintText: "Nombre y apellidos",
                labelText: "Nombre y apellidos",
                helperText: "Solo letras",
                suffixIcon: Icons.person_2,
              ),
            ],
          ),
        ));
  }
}
