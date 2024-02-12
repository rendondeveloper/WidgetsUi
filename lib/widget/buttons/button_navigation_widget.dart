import 'package:flutter/material.dart';

class ButtonNavigationWidget extends StatefulWidget {
  final double? width, height;
  final Color? backgroundColor;
  final Color? colorSplash;
  final Icon? icon;
  final VoidCallback? callBack;
  final Text text;
  final bool enableButton;

  const ButtonNavigationWidget(
      {Key? key,
      required this.text,
      this.width,
      this.height,
      this.backgroundColor,
      this.colorSplash,
      this.icon,
      this.enableButton = true,
      this.callBack})
      : super(key: key);

  @override
  State createState() {
    return _ButtonNavigationCustom();
  }
}

class _ButtonNavigationCustom extends State<ButtonNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    final button = SizedBox(
      width: widget.width ?? MediaQuery.of(context).size.width * .90,
      child: TextButton.icon(
        style: ButtonStyle(
          backgroundColor: Theme.of(context).iconButtonTheme.style?.backgroundColor,
        ),
        onPressed: widget.enableButton ? widget.callBack ?? () {} : null,
        icon: widget.icon ?? const Placeholder(),
        label: widget.text,
      ),
    );
    return button;
  }
}
