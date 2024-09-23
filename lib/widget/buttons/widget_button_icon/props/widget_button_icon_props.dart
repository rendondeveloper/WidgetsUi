import 'package:flutter/material.dart';

class WidgetButtonIconProps {
  final double? width;
  final Color? backgroundColor;
  final Widget? icon;
  final VoidCallback? onPressed;
  final Widget? text;
  final bool? enableButton;

  WidgetButtonIconProps({
    this.text,
    this.width,
    this.backgroundColor,
    this.icon,
    this.enableButton = false,
    this.onPressed,
  });
}
