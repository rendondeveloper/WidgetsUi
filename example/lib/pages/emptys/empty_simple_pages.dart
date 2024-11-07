import 'package:flutter/material.dart';
import 'package:widgets_ui/widget/empty/empty_simple/empty_simple_export.dart';
import 'package:widgets_ui/widget/pages/pages_demo/page_demo.dart';

class EmptySimplePage extends StatelessWidget {
  const EmptySimplePage({super.key});

  double? get elevationNone => null;

  @override
  Widget build(BuildContext context) {
    return DemoPage(
      title: 'Buttons differents Screen',
      description: "Show the differents buttons",
      content: EmptyStateSimpleWidget(
        props: EmptyStateSimpleProps(
          emptyType: EmptyType.center,
          icon: const Icon(Icons.abc),
          action: const Text('Action'),
          title: const Text('Title'),
        ),
      ),
    );
  }
}
