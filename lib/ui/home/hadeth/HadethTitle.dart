import 'package:flutter/material.dart';

import 'HadethDetailsScreen.dart';
import 'hadeth_tab.dart';

class HadethTitle extends StatelessWidget {
  HadethTitle(this.hadeth,{super.key});

  Hadeth hadeth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
        arguments: hadeth
        );
      },
      child: Text(hadeth.hadethTitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 25,)
      ),
    );
  }
}
