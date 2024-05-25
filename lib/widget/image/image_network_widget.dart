import 'package:flutter/material.dart';

Widget imageNetWotkWidget(String url,
    {BoxFit fit = BoxFit.fill,
    Widget icon = const Icon(Icons.image_not_supported_outlined)}) {
  return Image.network(
    url,
    fit: fit,
    errorBuilder: (context, error, stackTrace) {
      return icon;
    },
  );
}
