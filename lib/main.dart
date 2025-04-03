import 'package:flutter/material.dart';

import 'package:solid_soft_test/features/color_changer_page.dart';

void main() {
  runApp(const Main());
}

/// This widget is the root of your application.
class Main extends StatelessWidget {
  /// Creating a Main widget
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Color Changer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ColorChangerPage(),
    );
  }
}
