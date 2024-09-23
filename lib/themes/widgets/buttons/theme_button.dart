import 'package:flutter/material.dart';
import 'package:widgets_ui/themes/const/const_export.dart';

///button style for the app
final buttonStyleNormal = ButtonStyle(
  foregroundColor: WidgetStateProperty.all<Color>(baseOnSecondary),
  backgroundColor: WidgetStateProperty.all<Color>(basePrimary),
  overlayColor: WidgetStateProperty.all<Color>(
    baseOnSecondaryWithOpacity,
  ),
  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(conerLargeExtra),
    ),
  ),
  elevation: WidgetStateProperty.all(elevationSmall),
);

///button style for the app
final buttonStyleNormalSecondary = ButtonStyle(
  foregroundColor: WidgetStateProperty.all<Color>(baseOnSecondary),
  backgroundColor: WidgetStateProperty.all<Color>(baseOnPrimary),
  overlayColor: WidgetStateProperty.all<Color>(
    baseOnSecondaryWithOpacity,
  ),
  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(conerLargeExtra),
      side: BorderSide(
        color: baseDisableElement.withAlpha(15),
      ),
    ),
  ),
  elevation: WidgetStateProperty.all(elevationSmall),
);

///button style for the app
final buttonStyleNormalAlert = ButtonStyle(
  foregroundColor: WidgetStateProperty.all<Color>(baseOnPrimary),
  backgroundColor: WidgetStateProperty.all<Color>(baseError),
  overlayColor: WidgetStateProperty.all<Color>(
    baseOnSecondaryWithOpacity,
  ),
  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(conerLargeExtra),
    ),
  ),
  elevation: WidgetStateProperty.all(elevationSmall),
);

///button style enable for the app
final buttonStyleDisable = ButtonStyle(
  foregroundColor: WidgetStateProperty.all<Color>(baseOnDisableElement),
  backgroundColor: WidgetStateProperty.all<Color>(baseDisableElement),
  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(conerLargeExtra),
      side: const BorderSide(color: baseDisableElement),
    ),
  ),
  elevation: WidgetStateProperty.all(elevationNone),
);

///button style link for the app
final buttonStyleLink = ButtonStyle(
  foregroundColor: WidgetStateProperty.all<Color>(baseOnSecondary),
  backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
  padding: WidgetStateProperty.all<EdgeInsets>(
      const EdgeInsets.all(separationSmallMedium)),
  elevation: WidgetStateProperty.all(elevationNone),
  alignment: Alignment.center,
  minimumSize: WidgetStateProperty.all<Size>(Size.zero),
);
