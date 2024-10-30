import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets_ui/themes/const/const_export.dart';

part 'props/widget_simple_loader_props.dart';

class WidgetSimpleLoader extends StatelessWidget {
  final bool showLoader;
  final WidgetSimpleLoaderProps? props;
  const WidgetSimpleLoader({
    this.showLoader = false,
    this.props,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: props?.background ?? Colors.black26,
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          color: props?.content != null
              ? props?.backgroundContainer ?? Colors.white
              : props?.backgroundIndicator ??
                  Theme.of(context)
                      .progressIndicatorTheme
                      .refreshBackgroundColor,
          borderRadius:
              props?.borderRadius ?? BorderRadius.circular(conerMedium),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        height: props?.content == null ? 60 : 100,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (showLoader)
              Platform.isAndroid
                  ? Container(
                      decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: CircularProgressIndicator(
                        color: props?.color ??
                            Theme.of(context).progressIndicatorTheme.color,
                      ),
                    )
                  : const CupertinoActivityIndicator(),
            if (props?.content != null) const SizedBox(width: separationLarge),
            if (props?.content != null)
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  props?.content ?? Container(),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
