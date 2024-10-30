import 'package:flutter/material.dart';
import 'package:widgets_ui/widget/buttons/buttons_export.dart'
    show WidgetButton, WidgetButtonProps;
import 'package:widgets_ui/widget/loader/widget_simple_loader/widget_simple_loader.dart';
import 'package:widgets_ui/widget/pages/pages_demo/page_demo.dart';

class LoaderPage extends StatelessWidget {
  const LoaderPage({super.key});

  double? get elevationNone => null;

  @override
  Widget build(BuildContext context) {
    return DemoPage(
        title: 'Loader screen',
        description: "Show the loader screen",
        content: Stack(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: WidgetButton(
                  props: WidgetButtonProps(
                    text: 'Normal Button',
                    onPressed: () {},
                  ),
                )),
            WidgetSimpleLoader(
              showLoader: true,
              props: WidgetSimpleLoaderProps(
                background: Colors.black26,
                backgroundIndicator: Colors.white,
                color: Colors.red,
              ),
            ),
          ],
        ));
  }
}
