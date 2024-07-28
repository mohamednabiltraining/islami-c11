import 'package:flutter/material.dart';
import 'package:islami_c11/ui/chapterDetails/chapter_details.dart';

class ChapterTitle extends StatelessWidget {
  int index;
  String title;

  ChapterTitle(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ChapterDetails.routeName,
            arguments: ChapterDetailsArgs(index, title));
      },
      child: Text(
        title,
        textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge),
    );
  }
}
