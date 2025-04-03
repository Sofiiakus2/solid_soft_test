import 'dart:math';

import 'package:flutter/material.dart';

/// This widget is the home page of your application.
class ColorChangerPage extends StatefulWidget {
  /// Creating a ColorChangingPage
  const ColorChangerPage({super.key});

  @override
  State<ColorChangerPage> createState() => _ColorChangerPageState();
}

class _ColorChangerPageState extends State<ColorChangerPage> {
  Color _backgroundColor = Colors.white;

  void _changeBackgroundColor(){
    const int maxColorValue = 256;
    const double opacity = 1.0;

    final random = Random();
    setState(() {
      _backgroundColor = Color.fromRGBO(
          random.nextInt(maxColorValue),
          random.nextInt(maxColorValue),
          random.nextInt(maxColorValue),
          opacity,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeBackgroundColor,
      child: Scaffold(
        backgroundColor: _backgroundColor,
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello there',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
