import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void displayDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            title: const Text("Alerta"),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Este es el contenido de la alerta",
                    style: TextStyle(fontSize: 20)),
                SizedBox(height: 10),
                FlutterLogo(size: 40),

              ],
            ),
            actions: [
              TextButton(onPressed: () => Navigator.pop(context), child: const Text("Cerrar"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => displayDialog(context),
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text("Mostrar alerta", style: TextStyle(fontSize: 20)),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
