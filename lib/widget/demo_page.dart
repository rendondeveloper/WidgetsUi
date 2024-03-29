import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widgets_ui/widget/buttons/widget_button_icon.dart';
import 'package:widgets_ui/widget/card_widget/card_page.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widgets Demo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          WidgetButtonIcon(
            text: const Text("Card widget"),
            onPressed: () {
              MaterialPageRoute(builder: (BuildContext context) { return const CardPage(); });
            },
          )
        ],
      ),
    );
  }
}
