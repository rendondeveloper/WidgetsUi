part of '../widget_title_leading_and_container_collapsable.dart';

/// The WidgetCollapsableProps class.
class WidgetCollapsableProps {
  /// WidgetCollapsableProps is a class that contains
  /// the properties.
  WidgetCollapsableProps({
    required this.title,
    required this.contents,
    this.leading,
    this.paddingGeneral,
    this.separionTitleAndContent,
    this.paddingContent,
    this.mainAxisSize,
    this.crossAxisAlignment,
    this.mainAxisAlignment,
    this.scrollPhysicsContent,
    this.onTap,
  });

  /// The title of the widget.
  final Widget title;

  /// The leading widget of the widget.
  final Widget? leading;

  /// The content of the widget.
  final List<Widget> contents;

  /// The general padding of the widget.
  final EdgeInsetsGeometry? paddingGeneral;

  /// The separation between the title and the content.
  final double? separionTitleAndContent;

  /// The padding of the content.
  final EdgeInsetsGeometry? paddingContent;

  /// The main axis size of the widget.
  final MainAxisSize? mainAxisSize;

  /// The cross axis alignment of the widget.
  final CrossAxisAlignment? crossAxisAlignment;

  /// The main axis alignment of the widget.
  final MainAxisAlignment? mainAxisAlignment;

  /// The scroll physics of the content.
  final ScrollPhysics? scrollPhysicsContent;
  // ignore: inference_failure_on_function_return_type, avoid_positional_boolean_parameters
  final Function(bool)? onTap;
}
