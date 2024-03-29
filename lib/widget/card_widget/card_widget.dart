import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  final GestureTapCallback onTap;
  final Widget child;
  double borderRadius;

  CardWidget(
      {super.key,
      required this.onTap,
      required this.child,
      this.borderRadius = 12.0});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)),
          onTap: widget.onTap,
          child: widget.child),
    );
  }
}
