import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:widgets_ui/widget/input/upper_case_text_formatter.dart';

class InputStateWidget extends StatefulWidget {
  final String labelText;
  final TextStyle labelStyle;
  final bool useMayus;
  bool counterAllow, obscureText, visibleIconClear;
  IconData? iconData;
  FocusNode? focusNode, focusNextNode;
  TextEditingController? controller;
  TextInputType? keyboardType;
  TextInputAction? kextInputAction;
  TextStyle? textStyle;
  int? maxLength;

  InputStateWidget(
      {Key? key,
      required this.labelText,
      required this.labelStyle,
      this.counterAllow = false,
      this.obscureText = false,
      this.visibleIconClear = false,
      this.useMayus = false,
      this.iconData,
      this.focusNode,
      this.focusNextNode,
      this.controller,
      this.keyboardType,
      this.kextInputAction,
      this.textStyle,
      this.maxLength})
      : super(key: key);

  @override
  State<InputStateWidget> createState() => _InputStateWidget();
}

class _InputStateWidget extends State<InputStateWidget> {
  late bool showTextPassword;
  late List<TextInputFormatter> _textInputFormatter;

  @override
  void initState() {
    super.initState();
    showTextPassword = widget.obscureText;

    if (widget.useMayus) {
      _textInputFormatter = [];
      _textInputFormatter.add(UpperCaseTextFormatter());
    } else {
      _textInputFormatter = [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: widget.focusNode,
      obscureText: showTextPassword,
      controller: widget.controller,
      style: widget.textStyle,
      inputFormatters: _textInputFormatter,
      keyboardType: widget.keyboardType ?? TextInputType.text,
      textInputAction: widget.kextInputAction ?? TextInputAction.none,
      maxLength: widget.maxLength,
      onSubmitted: (text) {
        if (widget.focusNextNode != null) {
          FocusScope.of(context).requestFocus(widget.focusNextNode);
        }
      },
      decoration: decoration(
          context,
          widget.controller,
          widget.focusNode,
          widget.counterAllow,
          widget.visibleIconClear,
          widget.iconData,
          widget.labelText,
          widget.labelStyle),
    );
  }

  InputDecoration decoration(
      BuildContext context,
      TextEditingController? controller,
      FocusNode? focusNode,
      bool counterAllow,
      bool visibleIconClear,
      IconData? iconData,
      String labelText,
      TextStyle labelStyle) {
    return InputDecoration(
        counter: counterAllow ? null : const Offstage(),
        suffixIcon: widget.obscureText
            ? IconButton(
                onPressed: () {
                  setState(() {
                    showTextPassword = !showTextPassword;
                  });
                },
                icon: Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Icon(showTextPassword
                      ? Icons.visibility
                      : Icons.visibility_off),
                ),
              )
            : IconButton(
                onPressed: () => controller?.clear(),
                icon: Visibility(
                    visible: visibleIconClear,
                    child: const Padding(
                      padding: EdgeInsets.only(top: 12.0),
                      child: Icon(
                        Icons.clear,
                      ),
                    )),
              ),
        prefixIcon: iconData != null
            ? Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Icon(
                  iconData,
                ),
              )
            : null,
        labelText: labelText,
        labelStyle: labelStyle);
  }
}
