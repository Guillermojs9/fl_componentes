import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
      ),
      body: Center(
        child: Container(
          height: _height,
          width: _width,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_circle),
          onPressed: () {
            setState(() {
              _width = Random().nextInt(300) + 30;
              _height = Random().nextInt(300) + 30;
              int r = Random().nextInt(255) + 1;
              int g = Random().nextInt(255) + 1;
              int b = Random().nextInt(255) + 1;
              _color = Color.fromARGB(255, r, g, b);
            });
          }),
    );
  }
}
