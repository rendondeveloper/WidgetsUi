import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardWidget extends StatefulWidget {
  final GestureTapCallback onTap;
  GestureTapCallback? onLongPress;
  final Widget child;
  double borderRadius;

  CardWidget(
      {super.key,
      required this.onTap,
      required this.child,
      this.onLongPress,
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
          onLongPress: widget.onLongPress,
          child: widget.child),
    );
  }
}
