import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widgets_ui/themes/const/const_export.dart';
import 'package:widgets_ui/widget/buttons/common/widget_button_type.dart';

class WidgetButtonProps {
  Widget? textWidget;
  String? text;
  WidgetButtonType? type;
  double? cornerRadius;
  EdgeInsets? padding;
  VoidCallback? onPressed;

  WidgetButtonProps({
    this.textWidget,
    this.text,
    this.onPressed,
    this.type = WidgetButtonType.normal,
    this.cornerRadius = cornerZero,
    this.padding = EdgeInsets.zero,
  });
}
