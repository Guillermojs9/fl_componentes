import 'package:fl_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Card Widget"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            Card(
              child: Column(
                children: [
                  ListTile(
                      leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
                      title: Text("Titulo de la tarjeta"),
                      subtitle: Text("Cupidatat aliquip reprehenderit ad reprehenderit et duis cupidatat ullamco. Aliquip aute anim incididunt esse eu ea sint aute incididunt qui irure. Qui nulla ad amet officia et ea sunt quis mollit nulla ut qui."),
                      )
                ],
              ),
            )
          ],
        ));
  }
}
