import 'package:flutter/material.dart';

part 'props/widget_collapsable_props.dart';

/// The WidgetTitleLeadingAndContainerCollapsable widget.
class WidgetTitleLeadingAndContainerCollapsable extends StatefulWidget {
  /// The constructor for the WidgetTitleLeadingAndContainerCollapsable widget.
  const WidgetTitleLeadingAndContainerCollapsable({
    super.key,
    this.props,
  });

  /// WidgetCollapsableProps is a class that contains
  /// the properties
  final WidgetCollapsableProps? props;

  @override
  State<WidgetTitleLeadingAndContainerCollapsable> createState() =>
      _AplazoTitleLeadingAndContentState();
}

class _AplazoTitleLeadingAndContentState
    extends State<WidgetTitleLeadingAndContainerCollapsable>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _heightFactor;
  bool _expanded = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _heightFactor = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _initAnimation() async {
    setState(() {
      _expanded = !_expanded;
    });

    if (_expanded) {
      await _controller.forward();
    } else {
      await _controller.reverse();
    }

    if (widget.props?.onTap != null) {
      widget.props!.onTap!(_expanded);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.props?.paddingGeneral ?? EdgeInsets.zero,
      child: Column(
        mainAxisSize: widget.props?.mainAxisSize ?? MainAxisSize.min,
        crossAxisAlignment:
            widget.props?.crossAxisAlignment ?? CrossAxisAlignment.start,
        mainAxisAlignment:
            widget.props?.mainAxisAlignment ?? MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: _initAnimation,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                widget.props?.title ?? Container(),
                if (widget.props?.leading != null)
                  RotationTransition(
                    // ignore: prefer_int_literals
                    turns: Tween(begin: 0.0, end: 0.5).animate(_controller),
                    child: widget.props!.leading,
                  ),
              ],
            ),
          ),
          SizedBox(
            height: widget.props?.separionTitleAndContent,
          ),
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return ClipRect(
                child: Align(
                  heightFactor: _heightFactor.value,
                  child: child,
                ),
              );
            },
            child: ListView.builder(
              physics: widget.props?.scrollPhysicsContent ??
                  const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: widget.props?.paddingContent,
              itemCount: widget.props?.contents.length,
              itemBuilder: (builder, index) {
                return widget.props?.contents[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
