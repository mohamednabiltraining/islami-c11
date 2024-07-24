import 'package:flutter/material.dart';

class VerseContent extends StatelessWidget {
  int index;
  String content;

  VerseContent(this.content, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        '$content (${index + 1})',
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
