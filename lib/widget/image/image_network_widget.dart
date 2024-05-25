import 'package:flutter/material.dart';

class ImageNetWotkWidget extends StatelessWidget {
  final String _url;
  final BoxFit _fit;
  final Widget _icon;

  const ImageNetWotkWidget(this._url,
      {BoxFit fit = BoxFit.fill,
      Widget icon = const Icon(Icons.image_not_supported_outlined),
      super.key})
      : _fit = fit,
        _icon = icon;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      _url,
      fit: _fit,
      errorBuilder: (context, error, stackTrace) {
        return _icon;
      },
    );
  }
}
