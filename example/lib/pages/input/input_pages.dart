import 'package:flutter/material.dart';
import 'package:widgets_ui/widget/input/input_widget.dart';
import 'package:widgets_ui/widget/pages/pages_demo/page_demo.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  double? get elevationNone => null;

  @override
  Widget build(BuildContext context) {
    return DemoPage(
        title: 'Buttons differents Screen',
        description: "Show the differents buttons",
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              InputStateWidget(
                labelText: 'Email',
                labelStyle: const TextStyle(color: Colors.black),
              ),
            ],
          ),
        ));
  }
}
