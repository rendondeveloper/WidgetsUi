import 'package:flutter/material.dart';

class EmptyStateToRefreshWidget extends StatelessWidget {
  final Text text;
  final Icon icon;
  final Future<void> Function() onRefresh;

  const EmptyStateToRefreshWidget(
      {required this.text,
      required this.icon,
      required this.onRefresh,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width * .90,
      alignment: Alignment.center,
      child: RefreshIndicator(
        onRefresh: onRefresh,
        color: AppBarTheme.of(context).backgroundColor ??
            Theme.of(context).colorScheme.secondary,
        child: Wrap(
          alignment: WrapAlignment.center,
          children: <Widget>[
            icon,
            const SizedBox(height: 32.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34.0),
              child: text,
            ),
          ],
        ),
      ),
    );
  }
}
