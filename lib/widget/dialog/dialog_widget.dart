import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void dialogWidget(
    {Key? key,
    required final BuildContext context,
    required final Text title,
    final String? textOk,
    final String? textCancel,
    final TextStyle? textStyleButtonFlag,
    final VoidCallback? callbackOk,
    final VoidCallback? callbackCancel,
    final Widget? content,
    final bool useAndroidDialog = false,
    final bool barrierDismissible = true,
    final bool dismissAfterPressOk = false,
    final bool useZeroPaddingAndroid = false,
    AlertDialog Function(BuildContext context)? builder}) async {
  final actions = <Widget>[];

  if (useAndroidDialog || Platform.isAndroid) {
    if (textOk != null) {
      if (textCancel != null) {
        actions.add(TextButton(
          onPressed: () {
            callbackCancel?.call();
            Navigator.of(context).pop();
          },
          child:
              Text(textCancel ?? "", style: textStyleButtonFlag ?? const TextStyle(fontSize: 14.0, fontStyle: FontStyle.normal, color: Colors.black)),
        ));
      }

      actions.add(TextButton(
        onPressed: () {
          callbackOk?.call();
          if (dismissAfterPressOk) {
            Navigator.of(context).pop();
          }
        },
        child: Text(textOk ?? "", style: textStyleButtonFlag ?? const TextStyle(fontSize: 14.0, fontStyle: FontStyle.normal, color: Colors.black)),
      ));
    }
  } else {
    if (textCancel != null) {
      actions.add(CupertinoDialogAction(
        child:
            Text(textCancel ?? "", style: textStyleButtonFlag ?? const TextStyle(fontSize: 14.0, fontStyle: FontStyle.normal, color: Colors.black)),
        onPressed: () {
          callbackCancel?.call();
          Navigator.of(context).pop();
        },
      ));
    }

    if (textOk != null) {
      actions.add(CupertinoDialogAction(
          child: Text(textOk ?? "", style: textStyleButtonFlag ?? const TextStyle(fontSize: 14.0, fontStyle: FontStyle.normal, color: Colors.black)),
          onPressed: () {
            callbackOk?.call();
            if (dismissAfterPressOk) {
              Navigator.of(context).pop();
            }
          }));
    }
  }

  await showDialog(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (BuildContext context) {
      return useAndroidDialog || Platform.isAndroid
          ? AlertDialog(
              title: title,
              content: content,
              actions: actions,
            )
          : CupertinoAlertDialog(
              title: title,
              content: content,
              actions: actions,
            );
    },
  );
}
