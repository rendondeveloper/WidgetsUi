import 'package:widgets_ui/extension/context/extension_context.dart';
import 'package:widgets_ui_app/model/widget_model.dart';
//*Insert Import*//
//
import 'package:flutter/material.dart';
import 'package:widgets_ui_app/pages/pages_export.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final listWidgets = [
    WidgetModel(
      page: const ButtonsPage(),
      name: 'Buttons',
    ),
    WidgetModel(
      page: const ContainerPage(),
      name: 'Container',
    ),
    WidgetModel(
      page: const LoaderPage(),
      name: 'Loader',
    ),
    //*Insert Widget*//
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          "Material Design System",
        ),
      ),
      body: GridView.builder(
        itemBuilder: (BuildContext context, int index) {
          final item = listWidgets[index];
          return InkWell(
            onTap: () {
              context.navigateToPage(item.page);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  item.name,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
        itemCount: listWidgets.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3.4,
        ),
      ),
    );
  }
}
