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
    return SizedBox.expand(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
      ),
    );
  }
}
