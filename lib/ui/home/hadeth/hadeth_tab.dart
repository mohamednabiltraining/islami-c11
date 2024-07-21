import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_c11/ui/home/hadeth/HadethTitle.dart';
import 'package:islami_c11/ui/theme/MyTheme.dart';

class HadethTab extends StatefulWidget {
  HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadeth = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readHadethFile();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset('assets/images/basmala.png'),
      Container(
        width: double.infinity,
        height: 2,
        color: MyThemeData.lightPrimary,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          'Al Ahadeth',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
      ),
      Container(
        width: double.infinity,
        height: 2,
        color: MyThemeData.lightPrimary,
      ),
      Expanded(
          child: allHadeth.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
            itemBuilder: (context, index) {
              return HadethTitle(allHadeth[index]);
            },
            itemCount: allHadeth.length,
            separatorBuilder: (context, int index) => Container(
              height: 1,
              color: MyThemeData.lightPrimary,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 64),
            ),
          )),
    ]);
  }

  void readHadethFile() async {
    String fileContent =
    await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> separatedHadeth = fileContent.split("#");

    for (int i = 0; i < separatedHadeth.length; i++) {
      String singleHadeth = separatedHadeth[i];
      List<String> lines = singleHadeth.trim().split('\n');
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join("\n");
      Hadeth h = Hadeth(title, content);
      allHadeth.add(h);
    }

    setState(() {});
  }
}

class Hadeth {
  String hadethTitle;
  String hadethContent;

  Hadeth(this.hadethTitle, this.hadethContent);
}
