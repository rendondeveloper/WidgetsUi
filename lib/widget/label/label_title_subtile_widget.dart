import 'package:flutter/material.dart';

class LabelTitleSubtitleWidget extends StatelessWidget {
  final String title;
  final String subtTitle;
  final TextStyle? styleLabel;
  final int maxLinesLabel;
  final TextStyle? styleData;
  final int maxLinesData;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;

  const LabelTitleSubtitleWidget(
      {required this.title,
      required this.subtTitle,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.maxLinesLabel = 3,
      this.maxLinesData = 3,
      this.styleLabel,
      this.styleData,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: <Widget>[
        Text(title,
            softWrap: true,
            maxLines: maxLinesLabel,
            style: styleLabel ??
                Theme.of(context)
                    .textTheme
                    .labelSmall
                    ?.copyWith(fontWeight: FontWeight.normal)),
        const SizedBox(height: 8.0),
        Text(subtTitle,
            softWrap: true,
            maxLines: maxLinesData,
            overflow: TextOverflow.ellipsis,
            style: styleData ?? Theme.of(context).textTheme.labelSmall)
      ],
    );
  }
}
