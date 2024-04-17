import 'package:flutter/material.dart';

class EmptyStateSimpleWidget extends StatelessWidget {
  final Widget text;
  final Widget icon;

  const EmptyStateSimpleWidget(
      {required this.text, required this.icon, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width * .90,
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Wrap(
          alignment: WrapAlignment.center,
          children: <Widget>[
            icon,
            const SizedBox(height: 32.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34.0),
              child: text,
            ),
          ],
        ),
      ),
    );
  }
}
