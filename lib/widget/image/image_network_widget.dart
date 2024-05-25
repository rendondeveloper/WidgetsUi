import 'package:flutter/material.dart';

class ImageNetWotkWidget extends StatelessWidget {
  final String _url;
  final BoxFit _fit;
  final Widget _icon;
  final Widget? _loader;

  const ImageNetWotkWidget(this._url,
      {Widget? loader,
      BoxFit fit = BoxFit.fill,
      Widget icon = const Icon(Icons.image_not_supported_outlined),
      super.key})
      : _fit = fit,
        _icon = icon,
        _loader = loader;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      _url,
      fit: _fit,
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) return child;
        return _loader ?? const CircularProgressIndicator.adaptive();
      },
      errorBuilder: (context, error, stackTrace) {
        return _icon;
      },
    );
  }
}
