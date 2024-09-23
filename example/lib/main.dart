
import 'package:flutter/material.dart';
import 'package:widgets_ui/themes/theme_light.dart';
import 'package:widgets_ui_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Design System Aplazo',
      theme: lightTheme,
      home: const MyHomePage(),
    );
  }
}
