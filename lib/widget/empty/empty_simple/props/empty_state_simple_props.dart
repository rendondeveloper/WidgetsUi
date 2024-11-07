part of '../empty_state_simple_widget.dart';

///EmptyStateSimpleProps is a class that contains the properties for the
///AplazoEmptyState widget
class EmptyStateSimpleProps {
  ///Constructor for EmptyStateSimpleProps
  EmptyStateSimpleProps({
    required this.icon,
    required this.title,
    this.subtitle,
    this.action,
    this.mainAxisSize,
    this.crossAxisAlignment,
    this.mainAxisAlignment,
    this.padding,
    this.emptyType = EmptyType.center,
    this.maxHeightToTypeTopandFooter,
  });

  ///Icon widget to show
  final Widget icon;

  ///Title widget to show
  final Widget title;

  ///Subtitle widget to show
  final Widget? subtitle;

  ///Action widget to show
  final Widget? action;

  ///Main axis size for the column
  final MainAxisSize? mainAxisSize;

  ///Cross axis alignment for the column
  final CrossAxisAlignment? crossAxisAlignment;

  ///Main axis alignment for the column
  final MainAxisAlignment? mainAxisAlignment;

  ///Padding for the column
  final EdgeInsetsGeometry? padding;

  ///emptyType to show
  final EmptyType emptyType;

  ///EmptyType to show
  final double? maxHeightToTypeTopandFooter;
}
