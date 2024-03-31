import 'package:flutter/material.dart';

class WidgetButtonIcon extends StatefulWidget {
  final double? width;
  final Color? backgroundColor;
  final Widget? icon;
  final VoidCallback? onPressed;
  final Widget? text;
  final bool? enableButton;

  const WidgetButtonIcon(
      {Key? key,
      this.text,
      this.width,
      this.backgroundColor,
      this.icon,
      this.enableButton = false,
      this.onPressed})
      : super(key: key);

  @override
  State createState() {
    return _WidgetButtonIcon();
  }
}

class _WidgetButtonIcon extends State<WidgetButtonIcon> {
  @override
  Widget build(BuildContext context) {
    final background = widget.backgroundColor == null
        ? Theme.of(context).iconButtonTheme.style?.backgroundColor
        : MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
            return widget.backgroundColor;
          });

    final button = SizedBox(
      width: widget.width ?? MediaQuery.of(context).size.width * .90,
      child: TextButton.icon(
        style: ButtonStyle(
          enableFeedback: widget.enableButton,
          backgroundColor: background,
        ),
        onPressed:
            widget.enableButton == false ? widget.onPressed ?? () {} : null,
        icon: widget.icon ?? const SizedBox(),
        label: widget.text ?? const SizedBox(),
      ),
    );
    return button;
  }
}
