import 'package:flutter/material.dart';
import 'package:islami_c11/ui/DefaultScreen.dart';

class ChapterDetails extends StatelessWidget {
  static const String routeName = 'chapter-details';

  const ChapterDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
    return DefaultScreen(
      body: Scaffold(
        appBar: AppBar(
          title: Text(
            args.chapterTitle,
          ),
        ),
        body: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          elevation: 24,
          margin: EdgeInsets.symmetric(vertical: 64, horizontal: 24),
          child: ListView.builder(
            itemBuilder: (context, index) {
              Text("Details");
            },
            itemCount: 100,
          ),
        ),
      ),
    );
  }
}

class ChapterDetailsArgs {
  int chapterIndex;
  String chapterTitle;

  ChapterDetailsArgs(this.chapterIndex, this.chapterTitle);
}
