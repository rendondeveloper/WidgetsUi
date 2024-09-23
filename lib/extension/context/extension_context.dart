import 'package:flutter/material.dart';

extension ExtensionContext on BuildContext {
  void navigateToPage(Widget page) {
    Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}
