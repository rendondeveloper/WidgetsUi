import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widgets_ui/widget/card_widget/card_widget.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: Column(
        children: [
          Text("Card with animation "),
          CardWidget(onTap: () {}, child: Text("Card"))
        ],
      ),
    );
  }
}
