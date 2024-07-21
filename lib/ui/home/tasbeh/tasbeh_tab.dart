import 'dart:math';

import 'package:flutter/material.dart';
import 'package:islami_c11/ui/theme/MyTheme.dart';

class TasbehTab extends StatefulWidget {
  const TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {

  List<String> doaa = ['سبحان الله', 'الحمد لله', 'الله أكبر'];
  String mydoaa = 'سبحان الله';
  int numberOfTasbe7 = 0;
  double angle =(pi* 20)/180;
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [

          Stack(
              children:[
                Positioned(
                    top:-5,
                    right: 50,
                    width: 60,
                    height: 60,
                    child:
                    Image(image: AssetImage('assets/images/head_seb7a.png'))
                ),
                Container(
                    padding: EdgeInsets.all(35),
                    width: 250,
                    height: 250,
                    child: Transform.rotate(
                        angle: angle,
                        child: Image(
                            image: AssetImage('assets/images/body_seb7a.png')))
                ),
              ]
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Text('عدد التسبيحات',
                  style: TextStyle(
                    fontSize: 30,
                  ))),
          Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(24)),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Text('${numberOfTasbe7}',
                  style: TextStyle(fontSize: 30)
              )
          ),
          ElevatedButton(
              onPressed: () {
                onPress();
              },
              style: ElevatedButton.styleFrom(
                  padding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  backgroundColor: MyThemeData.lightPrimary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)) // background
              ),
              child: Text(mydoaa,
                  style:TextStyle(
                    fontSize: 30,
                  color: Colors.black
                  ) ))
        ],
      ),
    );
  }

  void onPress() {

    numberOfTasbe7++;
    angle = angle + 0.1;
    setState(() {});

    if (numberOfTasbe7 == 33) {
      numberOfTasbe7 = 0;
      i++;
    }
    if (i == 1) {
      mydoaa = doaa[1];
      setState(() {});
    } else if (i == 2) {
      mydoaa = doaa[2];
      setState(() {});
    } else if (i == 3) {
      i = 0;
      mydoaa = doaa[0];
      setState(() {});
    }
  }
}
