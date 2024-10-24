import 'package:flutter/material.dart';

part 'props/widget_container_props.dart';

/// The WidgetTitleLeadingAndContent widget.
class WidgetTitleLeadingAndContent extends StatelessWidget {
  /// The constructor for the WidgetTitleLeadingAndContent widget.
  const WidgetTitleLeadingAndContent({super.key, this.props});

  /// WidgetContainerProps is a class that contains the
  /// properties
  final WidgetContainerProps? props;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: props?.paddingGeneral ?? EdgeInsets.zero,
      child: InkWell(
        onTap: props?.onTap,
        child: Padding(
          padding: props?.paddingContent ?? EdgeInsets.zero,
          child: Column(
            mainAxisSize: props?.mainAxisSize ?? MainAxisSize.min,
            crossAxisAlignment:
                props?.crossAxisAlignment ?? CrossAxisAlignment.start,
            mainAxisAlignment:
                props?.mainAxisAlignment ?? MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  props?.title ?? Container(),
                  if (props?.leading != null) props!.leading!,
                ],
              ),
              if (props?.separationContentAndTitle != null)
                SizedBox(height: props!.separationContentAndTitle!),
              props?.content ?? Container(),
            ],
          ),
        ),
      ),
    );
  }
}
