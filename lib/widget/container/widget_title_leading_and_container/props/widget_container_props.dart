part of '../widget_title_leading_and_container.dart';

/// The WidgetContainerProps class contains the properties
/// for the AplazoTitleLeadingAndContainer widget.
class WidgetContainerProps {
  /// The constructor for the WidgetContainerProps class.
  WidgetContainerProps({
    required this.title,
    required this.content,
    this.leading,
    this.onTap,
    this.separationContentAndTitle,
    this.paddingContent,
    this.paddingGeneral,
    this.mainAxisSize,
    this.crossAxisAlignment,
  });

  /// The title of the widget.
  Widget title;

  /// The content of the widget.
  Widget content;

  /// The separation between the content and the title.
  double? separationContentAndTitle;

  /// The leading widget of the widget.
  Widget? leading;

  /// The onTap function of the widget.
  VoidCallback? onTap;

  /// The padding of the content.
  EdgeInsets? paddingContent;

  /// The general padding of the widget.
  EdgeInsets? paddingGeneral;

  /// The main axis size of the widget.
  MainAxisSize? mainAxisSize;

  /// The main axis alignment of the widget.
  MainAxisAlignment? mainAxisAlignment;

  /// The cross axis alignment of the widget.
  CrossAxisAlignment? crossAxisAlignment;
}
