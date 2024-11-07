import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widgets_ui/themes/const/separation.dart';

part './props/empty_state_props.dart';
part './props/empty_type.dart';

class EmptyStateSimpleWidget extends StatelessWidget {
  const EmptyStateSimpleWidget({
    super.key,
    this.props,
  });

  final EmptyStateProps? props;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: switch (props?.emptyType) {
              EmptyType.center => 1,
              EmptyType.topAndFooter => 1,
              EmptyType.centerAndFooter => 2,
              EmptyType.top => 1,
              _ => 0,
            },
            child: switch (props?.emptyType) {
              EmptyType.center => Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _screenBody(),
                        _footer(),
                      ],
                    ),
                  ),
                ),
              EmptyType.topAndFooter => SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: props?.maxHeightToTypeTopandFooter ??
                          MediaQuery.of(context).size.height * 0.90,
                    ),
                    child: Column(
                      children: [
                        _screenBody(),
                        Expanded(child: Container()),
                        _footer(),
                      ],
                    ),
                  ),
                ),
              EmptyType.centerAndFooter => Column(
                  children: [
                    Expanded(
                      child: Align(
                        child: SingleChildScrollView(
                          child: _screenBody(),
                        ),
                      ),
                    ),
                    _footer(),
                  ],
                ),
              EmptyType.top => SingleChildScrollView(
                  child: Column(
                    children: [
                      _screenBody(),
                      _footer(),
                    ],
                  ),
                ),
              _ => Container(),
            },
          ),
        ],
      ),
    );
  }

  Widget _footer() {
    return props?.action != null
        ? Column(
            children: <Widget>[
              props!.action!,
              const SizedBox(
                height: separationLarge,
              ),
            ],
          )
        : Container();
  }

  Widget _screenBody() {
    return Padding(
      padding: props?.padding ?? EdgeInsets.zero,
      child: Column(
        mainAxisSize: props?.mainAxisSize ?? MainAxisSize.min,
        crossAxisAlignment:
            props?.crossAxisAlignment ?? CrossAxisAlignment.center,
        mainAxisAlignment: props?.mainAxisAlignment ?? MainAxisAlignment.center,
        children: [
          if (props?.icon != null) props!.icon,
          if (props?.icon != null)
            const SizedBox(
              height: separationLarge,
            ),
          if (props?.title != null) props!.title,
          if (props?.subtitle != null)
            const SizedBox(
              height: separationLarge,
            ),                 
          if (props?.subtitle != null) props!.subtitle!,
        ],
      ),
    );
  }
}
