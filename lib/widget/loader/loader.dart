import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoaderWidget extends StatelessWidget {
  final Widget? message;
  const LoaderWidget({this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black38,
      alignment: Alignment.center,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        height: 60,
        color: message != null ? Colors.white : Colors.transparent,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Platform.isAndroid
                ? Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                            AppBarTheme.of(context).backgroundColor ??
                                Theme.of(context).colorScheme.secondary),
                        backgroundColor: Colors.white),
                  )
                : const CupertinoActivityIndicator(),
            if (message != null)
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: message),
          ],
        ),
      ),
    );
  }
}
