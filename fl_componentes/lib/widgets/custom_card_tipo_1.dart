import 'package:fl_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text("Titulo de la tarjeta"),
            subtitle: Text(
                "Cupidatat aliquip reprehenderit ad reprehenderit et duis cupidatat ullamco. Aliquip aute anim incididunt esse eu ea sint aute incididunt qui irure. Qui nulla ad amet officia et ea sunt quis mollit nulla ut qui."),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text("Aceptar")),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: TextButton(onPressed: () {}, child: const Text("Cancelar")),
              ),
            ],
          )
        ],
      ),
    );
  }
}
