import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c11/ui/DefaultScreen.dart';
import 'package:islami_c11/ui/chapterDetails/verse_content.dart';
import 'package:islami_c11/ui/theme/MyTheme.dart';

class ChapterDetails extends StatefulWidget {
  static const String routeName = 'chapter-details';

  const ChapterDetails({super.key});

  @override
  State<ChapterDetails> createState() => _ChapterDetailsState();
}

class _ChapterDetailsState extends State<ChapterDetails> {
  List<String> verses = []; // if list is empty then read

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;

    // file func is still loading file content

    if (verses.isEmpty) {
      readFileData(args.chapterIndex); // 10s non-blocking
    }
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
          child: verses.isNotEmpty
              ? ListView.separated(
                  itemBuilder: (context, index) {
                    return VerseContent(verses[index], index);
                  },
                  itemCount: verses.length,
                  separatorBuilder: (context, index) => Container(
                    height: 1,
                    color: MyThemeData.lightPrimary,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 64),
                  ),
                )
              : Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }

  void readFileData(int fileIndex) async {
    // Async
    String fileContent =
        await rootBundle.loadString("assets/files/${fileIndex + 1}.txt");
    List<String> lines = fileContent.trim().split("\n");
    // show file content
    print(fileContent);
    setState(() {
      verses = lines;
    });
  }
}

class ChapterDetailsArgs {
  int chapterIndex;
  String chapterTitle;

  ChapterDetailsArgs(this.chapterIndex, this.chapterTitle);
}
