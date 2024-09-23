import 'package:flutter/material.dart';
import 'package:widgets_ui/widget/buttons/widget_button_icon/props/widget_button_icon_props.dart';

class WidgetButtonIcon extends StatelessWidget {
  final WidgetButtonIconProps? props;

  const WidgetButtonIcon({
    Key? key,
    this.props,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final background = props?.backgroundColor == null
        ? Theme.of(context).iconButtonTheme.style?.backgroundColor
        : WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
            return props?.backgroundColor;
          });

    final button = SizedBox(
      width: props?.width ?? MediaQuery.of(context).size.width * .90,
      child: IgnorePointer(
        ignoring: props?.enableButton == false,
        child: TextButton.icon(
          style: ButtonStyle(
            enableFeedback: props?.enableButton,
            backgroundColor: background,
          ),
          onPressed: props?.onPressed,
          icon: props?.icon ?? const SizedBox(),
          label: props?.text ?? const SizedBox(),
        ),
      ),
    );
    return button;
  }
}
