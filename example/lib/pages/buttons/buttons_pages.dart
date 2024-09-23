import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widgets_ui/themes/const/const_export.dart';
import 'package:widgets_ui/widget/buttons/widget_button/props/widget_button_type.dart';
import 'package:widgets_ui/widget/buttons/widget_button/widget_button_export.dart';
import 'package:widgets_ui/widget/pages/pages_demo/page_demo.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({super.key});

  double? get elevationNone => null;

  @override
  Widget build(BuildContext context) {
    return DemoPage(
        title: 'Buttons differents Screen',
        description: "Show the differents buttons",
        content: Column(
          children: [
            WidgetButton(
              props: WidgetButtonProps(
                text: 'Normal Button',
                onPressed: () {},
              ),
            ),
            const SizedBox(height: separationSmallLarge),
            WidgetButton(
              props: WidgetButtonProps(
                text: 'Normal Button',
                type: WidgetButtonType.disable,
                onPressed: () {},
              ),
            ),
            const SizedBox(height: separationSmallLarge),
            WidgetButton(
              props: WidgetButtonProps(
                text: 'Normal Button',
                type: WidgetButtonType.link,
                onPressed: () {},
              ),
            )
          ],
        ));
  }
}
