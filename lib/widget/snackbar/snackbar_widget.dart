import 'package:flutter/material.dart';

void showSnackbarWidget({
  required BuildContext context,
  required Widget content,
  required Color color,
  SnackBarBehavior behavior = SnackBarBehavior.fixed,
  Duration duration = const Duration(milliseconds: 3000),
  direction = DismissDirection.up,
  Widget? icon,
}) {
  ScaffoldMessenger.of(context)
    ..clearSnackBars()
    ..showSnackBar(SnackBar(
        backgroundColor: color,
        dismissDirection: direction,
        duration: duration,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: color, width: 1.0),
        ),
        behavior: behavior,
        content: Padding(
          padding: const EdgeInsets.only(right: 24, left: 24),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (icon != null) Center(child: icon),
              if (icon != null)
                const SizedBox(
                  width: 8,
                ),
              content
            ],
          ),
        )));
}
