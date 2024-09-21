import 'package:flutter/material.dart';

class WidgetTextProps {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final bool? softWrap;
  final TextOverflow? overflow;
  final int? maxLines;
  final StrutStyle? strutStyle;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final BoxFit fit;
  final AlignmentGeometry alignment;
  final Clip clipBehavior;

  WidgetTextProps({
    required this.text,
    this.style,
    this.textAlign,
    this.textDirection,
    this.softWrap,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines = 1,
    this.strutStyle,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
    this.clipBehavior = Clip.none,
  });
}
