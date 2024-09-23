import 'package:flutter/material.dart';
import 'package:widgets_ui/themes/const/const_export.dart';
import 'package:widgets_ui/themes/widgets/text/theme_text.dart';

///light theme for the app
final lightTheme = ThemeData(
  primaryColor: basePrimary,
  dividerColor: baseDivider,
  splashColor: baseOnSecondary,
  scaffoldBackgroundColor: baseBackground,
  disabledColor: baseDisableElement,
  appBarTheme: const AppBarTheme(
    color: baseOnPrimary,
    elevation: elevationNone,
  ),
  dialogTheme: DialogTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(conerLarge),
    ),
  ),
  cardTheme: const CardTheme(
    color: baseSurface,
    surfaceTintColor: baseOnSurface,
    elevation: elevationSmall,
  ),
  colorScheme: const ColorScheme.light(
    primary: basePrimary,
    onPrimary: basePrimary,
    secondary: baseSecondary,
    onSecondary: baseOnSecondary,
    onSurface: baseOnSurface,
    surface: baseSurface,
    error: baseError,
    onError: baseOnError,
  ),
  textTheme: const TextTheme(
    displayLarge: styleDisplayLarge,
    displayMedium: styleDisplayMedium,
    displaySmall: styleDisplaySmall,
    headlineLarge: styleHeadlineLarge,
    headlineMedium: styleHeadlineMedium,
    headlineSmall: styleHeadlineSmall,
    titleLarge: styleTitleLarge,
    titleMedium: styleTitleMedium,
    titleSmall: styleTitleSmall,
    bodyLarge: styleBodyLarge,
    bodyMedium: styleBodyMedium,
    bodySmall: styleBodySmall,
    labelLarge: styleLabelLarge,
    labelMedium: styleLabelMedium,
    labelSmall: styleLabelSmall,
  ),
);
