import 'package:islami_c11/ui/theme/MyTheme.dart';
import 'package:flutter/material.dart';
import 'package:islami_c11/ui/ui_utils.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double angle = 0;
  List<String> azkar = [
    "سبحان الله",
    "الحمدلله",
    "الله اكبر",
    "لا الله الا الله",
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(getFullPathImage('head of seb7a.png')),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Transform.rotate(
                angle: angle,
                child: GestureDetector(
                    onTap: () {
                      OnTap();
                    },
                    child: Image.asset(getFullPathImage('body of seb7a.png'))),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 27.0),
          child: Text(
            "عدد التسبيحات",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 26.0),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: MyThemeData.lightPrimary,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text(
                "$counter",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 26.0),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: MyThemeData.lightPrimary,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text(
                "${azkar[index]}",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  OnTap() {
    counter++;
    if (counter % 33 == 0) {
      index++;
      counter++;
      counter = 0;
    }
    if (index == azkar.length) {
      index = 0;
    }
    angle += 360 / 4;
    setState(() {});
  }
}
