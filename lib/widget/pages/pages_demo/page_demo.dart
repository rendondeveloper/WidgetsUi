import 'package:flutter/material.dart';

/// DemoPage is a widget that shows a title, a description and a content
class DemoPage extends StatefulWidget {
  /// DemoPage is a widget that shows a title, a description and a content
  const DemoPage({
    super.key,
    this.title,
    this.description,
    this.content,
  });

  /// DemoPage is a widget that shows a title, a description and a content
  final String? title;

  /// Description of the page
  final String? description;

  /// Content of the page
  final Widget? content;

  @override
  DemoPageState createState() => DemoPageState();
}

/// DemoPageState is the state of the DemoPage widget
class DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title ?? '',
        ),
      ),
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  widget.description ?? '',
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: SizedBox(width: double.infinity, child: widget.content),
            ),
          ],
        ),
      ),
    );
  }
}
