import 'package:flutter/material.dart';

void showSnackbarWidget({
  required BuildContext context,
  required Widget content,
  Color? color,
  SnackBarBehavior behavior = SnackBarBehavior.fixed,
  Duration duration = const Duration(milliseconds: 3000),
  direction = DismissDirection.up,
  border = BorderRadius.zero,
  Widget? icon,
}) {
  ScaffoldMessenger.of(context)
    ..clearSnackBars()
    ..showSnackBar(SnackBar(
        backgroundColor: color,
        dismissDirection: direction,
        duration: duration,
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: color ??
                    Theme.of(context).snackBarTheme.backgroundColor ??
                    Colors.black,
                width: 1.0),
            borderRadius: border),
        behavior: behavior,
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (icon != null) Center(child: icon),
              if (icon != null)
                const SizedBox(
                  width: 8,
                ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .60,
                child: content,
              )
            ],
          ),
        )));
}
