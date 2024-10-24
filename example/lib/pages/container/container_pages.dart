import 'package:flutter/material.dart';
import 'package:widgets_ui/widget/container/widget_title_leading_and_container/widget_title_leading_and_container_export.dart'
    show WidgetTitleLeadingAndContent, WidgetContainerProps;
import 'package:widgets_ui/widget/container/widget_title_leading_and_container_collapsable/widget_title_leading_and_container_collapsable_export.dart'
    show WidgetTitleLeadingAndContainerCollapsable, WidgetCollapsableProps;
import 'package:widgets_ui/widget/pages/pages_demo/page_demo.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  double? get elevationNone => null;

  @override
  Widget build(BuildContext context) {
    return DemoPage(
      title: 'Buttons differents Screen',
      description: "Show the differents buttons",
      content: Column(
        children: [
          WidgetTitleLeadingAndContainerCollapsable(
            props: WidgetCollapsableProps(
              title: const Text('Normal Button'),
              leading: const Icon(Icons.arrow_back),
              contents: [
                const Text('Normal Button'),
                const Text('Normal Button'),
              ],
            ),
          ),
          WidgetTitleLeadingAndContent(
            props: WidgetContainerProps(
              title: const Text('Normal Button'),
              content: const Text('Normal Button'),
            ),
          ),
        ],
      ),
    );
  }
}
