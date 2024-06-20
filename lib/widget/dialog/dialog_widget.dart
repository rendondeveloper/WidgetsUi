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
    final bool allowBackCancel = true,
    final bool allowBackOk = true}) async {
  await showDialog(
    context: context,
    useSafeArea: false,
    builder: (BuildContext contextLocal) {
      List<Widget>? actionsList;
      if (callbackCancel != null) {
        actionsList = [];
        actionsList.add(InkWell(
          onTap: () {
            callbackCancel();
            if (allowBackCancel) {
              Navigator.of(context).pop();
            }
          },
          child: Text(textCancel ?? "CANCELAR",
              style: textStyleButtonFlag ??
                  Theme.of(context).textTheme.labelLarge),
        ));
      }

      if (allowBackCancel && callbackCancel == null) {
        actionsList = [];
        actionsList.add(InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Text(textCancel ?? "CANCELAR",
              style: textStyleButtonFlag ??
                  Theme.of(context).textTheme.labelLarge),
        ));
      }

      if (callbackOk != null) {
        actionsList ??= [];
        actionsList.add(InkWell(
          onTap: () {
            callbackOk();
            if (allowBackOk) {
              Navigator.of(context).pop();
            }
          },
          child: Text(textOk ?? "ACEPTAR",
              style: textStyleButtonFlag ??
                  Theme.of(context).textTheme.labelLarge),
        ));
      }

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
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  if (message != null) message,
                  if (child != null) child,
                ],
              ),
              actions: actionsList ?? [],
            );
    },
  );
}
