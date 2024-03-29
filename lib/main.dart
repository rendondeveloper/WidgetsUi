import 'package:flutter/material.dart';
import 'package:widgets_ui/widget/demo_page.dart';

void main() => runApp(MaterialApp(
    theme: ThemeData(
      iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.red; // Color cuando está presionado
            }
            return Colors.blueAccent; // Color por defecto
          },
        ),
      )),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.blueAccent,
            iconColor:Colors.white,
            backgroundColor: Colors.blueAccent,
            elevation: 12,
            textStyle: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
            ),
          )),
    ),
    home: const DemoPage()));
