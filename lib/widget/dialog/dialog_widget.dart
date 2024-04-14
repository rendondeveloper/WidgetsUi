import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void dialogWidget(
    {Key? key,
    required final BuildContext context,
    final Text? title,
    final Text? message,
    final String? textOk,
    final String? textCancel,
    final TextStyle? textStyleButtonFlag,
    final VoidCallback? callbackOk,
    final VoidCallback? callbackCancel,
    final Widget? child,
    final bool useAndroidDialog = false,
    final bool useZeroPaddingAndroid = false,
    AlertDialog Function(BuildContext context)? builder}) async {
  late List<Widget>? actionsList;

  if (callbackCancel != null) {
    actionsList = [];
    actionsList.add(InkWell(
      onTap: callbackCancel,
      child: Text(textCancel ?? "CANCELAR",
          style: textStyleButtonFlag ?? Theme.of(context).textTheme.labelLarge),
    ));
  }
  if (callbackOk != null) {
    actionsList ??= [];
    actionsList.add(InkWell(
      onTap: callbackOk,
      child: Text(textOk ?? "ACEPTAR",
          style: textStyleButtonFlag ?? Theme.of(context).textTheme.labelLarge),
    ));
  }

  await showDialog(
    context: context,
    useSafeArea: false,
    builder: (BuildContext context) {
      return useAndroidDialog || Platform.isAndroid
          ? AlertDialog(
              insetPadding: useZeroPaddingAndroid
                  ? EdgeInsets.zero
                  : const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 24.0),
              title: title,
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  if (message != null) message,
                  if (child != null) child,
                ],
              ),
              actions: actionsList,
            )
          : CupertinoAlertDialog(
              title: title,
              content: child,
              actions: <Widget>[
                CupertinoDialogAction(
                    child: Text(textCancel ?? "CANCELAR",
                        style: textStyleButtonFlag ??
                            const TextStyle(
                                fontSize: 14.0,
                                fontStyle: FontStyle.normal,
                                color: Colors.black)),
                    onPressed: () {
                      final action =
                          callbackCancel ?? Navigator.of(context).pop();
                      action;
                    }),
                CupertinoDialogAction(
                  child: Text(textOk ?? "ACEPTAR",
                      style: textStyleButtonFlag ??
                          const TextStyle(
                              fontSize: 14.0,
                              fontStyle: FontStyle.normal,
                              color: Colors.black)),
                  onPressed: () {
                    if (callbackOk != null) {
                      callbackOk();
                    } else {
                      Navigator.of(context).pop();
                    }
                  },
                ),
              ],
            );
    },
  );
}
