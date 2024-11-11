import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        children: [
          Image(
            image: NetworkImage('https://astelus.com/wp-content/uploads/2024/04/Lago-Moraine-Parque-Nacional-Banff-Alberta-Canada.jpg')
            )
          ],
      ),
    );
  }
}
