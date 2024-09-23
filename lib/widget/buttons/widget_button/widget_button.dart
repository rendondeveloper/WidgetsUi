import 'package:flutter/material.dart';
import 'package:widgets_ui/themes/widgets/buttons/theme_button.dart';
import 'package:widgets_ui/widget/buttons/widget_button/props/widget_button_props.dart';
import 'package:widgets_ui/widget/buttons/common/widget_button_type.dart';

class WidgetButton extends StatelessWidget {
  final WidgetButtonProps? props;

  const WidgetButton({super.key, this.props});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: switch (props?.type) {
        WidgetButtonType.normal => buttonStyleNormal,
        WidgetButtonType.alert => buttonStyleNormalAlert,
        WidgetButtonType.secondary => buttonStyleNormalSecondary,
        WidgetButtonType.link => buttonStyleLink,
        WidgetButtonType.disable => buttonStyleDisable,        
        null => null,
      },
      
      onPressed: props?.onPressed,
      child: props?.textWidget ??
          Text(
            props?.text ?? '',
          ),
    );
  }
}
