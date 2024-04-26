import 'package:flutter/material.dart';

class EmptyStateActionWidget extends StatelessWidget {
  final Widget text;
  final Widget icon;
  final Widget action;

  const EmptyStateActionWidget(
      {required this.text, required this.icon, required this.action, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    return Container(
      width: media.orientation == Orientation.portrait
          ? media.size.width * .80
          : media.size.width * .60,
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
            const SizedBox(height: 40.0),
            action
          ],
        ),
      ),
    );
  }
}
