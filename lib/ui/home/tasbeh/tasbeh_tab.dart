import 'package:flutter/material.dart';
import 'package:islami_c11/ui/theme/MyTheme.dart';


class SebhaScreen extends StatefulWidget {
  SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {


  int count=0;
  int index=0;
  List<String> listTasbeeh=[
    'سبحان الله',
    'الحمد لله',
    'لا إله إلا الله',
    'الله أكبر'
  ];

  double turns=0.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                setState(() {

                  turns=turns+1/10;
                  if(count<33){
                    count++;
                  }else{
                    count=0;
                    if(index<listTasbeeh.length-1){
                      index++;
                    }else{
                      index=0;
                    }
                  }
                });
              },
              child: AnimatedRotation(
                duration: const Duration(milliseconds: 200),
                turns: turns,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image.asset(
                      'assets/images/head_sebha_logo.png',
                      height: 105,
                      width: 73,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 75),
                      child: Image.asset(
                        'assets/images/body_sebha_logo.png',
                        height: 234,
                        width: 232,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Text(
                'Number of praises',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            Container(
              width: 69,
              height: 81,
              decoration: BoxDecoration(
                  color: MyThemeData.lightPrimary,
                  borderRadius: BorderRadius.circular(25)
              ),
              child:  Center(child: Text(
                '$count',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400
                ),
              )
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              width: 137,
              height: 51,
              decoration: BoxDecoration(
                  color: MyThemeData.lightPrimary,
                  borderRadius: BorderRadius.circular(25)
              ),
              child:  Center(child: Text(
                listTasbeeh[index],
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.white
                ),
              )
              ),
            ),

          ],
        ),
      ),
    );
  }}
