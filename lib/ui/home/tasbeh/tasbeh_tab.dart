import 'package:flutter/material.dart';

import '../../theme/mytheme.dart';
import '../../ui_utils.dart';

class TasbehTab extends StatefulWidget {

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter =0;
  double angel =0;
  List<String>Azkar=[
    "سبحان الله",
    "الحمد لله",
    "لا اله الا الله",
    "الله اكبر",

  ];
  int index =0;
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children:[

            Image.asset(getFullPathImage('head of seb7a.png')),
            Padding(padding: const EdgeInsets.only(top: 75.0),
              child: Transform.rotate(
                angle: angel,
                child: GestureDetector(
                    onTap: (){

                      OnTap();

                    },
                    child: Image.asset(getFullPathImage('body of seb7a.png'))),
              ),

            ),



          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 27.0),
          child: Text("عدد التسبيحات",
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 26.0),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: MyThemeData.lightPrimary,
                  borderRadius: BorderRadius.circular(30)),
              child: Text("$counter",
                style: TextStyle(
                    fontSize: 25
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
                  borderRadius: BorderRadius.circular(30)),
              child: Text("${Azkar[index]}",
                style: TextStyle(
                    fontSize: 30
                ),

              ),
            ),
          ),
        ),
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
    if (index == Azkar.length) {
      index == 0;
    }
    angel += 360 / 4;
    setState(() {

    });
  }
}

