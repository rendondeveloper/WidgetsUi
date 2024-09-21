import 'package:flutter/material.dart';
import 'package:widgets_ui/widget/text/widget_text/widget_text.dart';

class WidgetText extends StatelessWidget {
  const WidgetText({
    super.key,
    required this.props,
  });

  final WidgetTextProps props;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: props.fit,
      alignment: props.alignment,
      clipBehavior: props.clipBehavior,
      child: Text(
        props.text,
        style: props.style,
        textAlign: props.textAlign,
        textDirection: props.textDirection,
        softWrap: props.softWrap,
        overflow: props.overflow,
        maxLines: props.maxLines,
        strutStyle: props.strutStyle,
        textWidthBasis: props.textWidthBasis,
        textHeightBehavior: props.textHeightBehavior,
      ),
    );
  }
}
