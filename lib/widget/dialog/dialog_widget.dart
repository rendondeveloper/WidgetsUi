import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void dialogWidget(
    {Key? key,
    required final BuildContext context,
    required final Text title,
    required final Text message,
    final String? textOk,
    final String? textCancel,
    final TextStyle? textStyleButtonFlag,
    final VoidCallback? callbackOk,
    final VoidCallback? callbackCancel,
    final Widget? child,
    final bool useAndroidDialog = false,
    final bool useZeroPaddingAndroid = false,
    AlertDialog Function(BuildContext context)? builder}) async {
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
              content: Stack(
                children: <Widget>[
                  child ?? Container(),
                  message,
                ],
              ),
              actions: <Widget>[
                Visibility(
                  visible: callbackCancel != null,
                  child: InkWell(
                    onTap: callbackCancel != null
                        ? () {
                            callbackCancel();
                          }
                        : () {
                            Navigator.of(context).pop();
                          },
                    child: Text(textCancel ?? "CANCELAR",
                        style: textStyleButtonFlag ??
                            context.getTheme().textTheme.labelLarge),
                  ),
                ),
                InkWell(
                  onTap: callbackOk != null
                      ? () {
                          callbackOk();
                        }
                      : () {
                          Navigator.of(context).pop();
                        },
                  child: Text(textOk ?? "ACEPTAR",
                      style: textStyleButtonFlag ??
                          context.getTheme().textTheme.labelLarge),
                ),
              ],
            )
          : CupertinoAlertDialog(
              title: title,
              content: child,
              actions: <Widget>[
                CupertinoDialogAction(
                    child: Text(
                        textCancel ?? StringsApp.bottomSheetButtonCancel,
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
                  child: Text(textOk ?? StringsApp.bottomSheetButtonOk,
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
