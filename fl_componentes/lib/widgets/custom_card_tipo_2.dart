import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  final String imageUrl1;
  final String? nombre;

  const CustomCardTipo2({super.key, required this.imageUrl1, this.nombre});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl1),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (nombre != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
                child: Text(nombre ?? 'Desconocido'))
        ],
      ),
    );
  }
}
