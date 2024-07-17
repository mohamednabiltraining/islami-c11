import 'package:flutter/material.dart';
import 'package:islami_c11/ui/hadethDetails/hadeth_details.dart';
import 'package:islami_c11/ui/home/hadeth/hadeth_tab.dart';

class HadethTitle extends StatelessWidget {
  Hadeth hadeth;

  HadethTitle(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
            arguments: hadeth);
      },
      child: Text(
        hadeth.title,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
