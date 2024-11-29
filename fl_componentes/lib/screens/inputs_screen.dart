import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      "nombre": "Andres",
      "apellido": "Iniesta",
      "email": "iniesta@gmail.com",
      "password": "123456",
      "role": "usuario"
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text("Forms: Inputs"),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomTextFormField(
                  hintText: "Nombre",
                  labelText: "Nombre del usuario",
                  helperText: "Solo letras",
                  suffixIcon: Icons.person_2,
                  obscureText: false,
                  formProperty: "nombre",
                  formValues: formValues,
                ),
                const SizedBox(height: 15),
                CustomTextFormField(
                  hintText: "Apellidos",
                  labelText: "Apellidos del usuario",
                  helperText: "Solo letras",
                  suffixIcon: Icons.person_2,
                  obscureText: false,
                  formProperty: "apellidos",
                  formValues: formValues,
                ),
                const SizedBox(height: 15),
                CustomTextFormField(
                  hintText: "Email",
                  labelText: "Email del usuario",
                  helperText: "Incluir @",
                  suffixIcon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  formProperty: "email",
                  formValues: formValues,
                ),
                const SizedBox(height: 15),
                CustomTextFormField(
                  hintText: "Contraseña",
                  labelText: "Contraseña del usuario",
                  suffixIcon: Icons.password,
                  obscureText: true,
                  formProperty: "password",
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if(!myFormKey.currentState!.validate()){
                        print("Errores en el formulario");
                        return;
                      }
                    },
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text("Enviar formulario"))))
              ],
            ),
          ),
        ));
  }
}
