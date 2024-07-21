import 'package:flutter/material.dart';
import '../../DefaultScreen.dart';
import 'hadeth_tab.dart';


class HadethDetailsScreen extends StatelessWidget {
  const HadethDetailsScreen({super.key});

  static const String routeName = 'HadethDetailsScreen';

  @override
  Widget build(BuildContext context) {
    Hadeth hadeth=ModalRoute.of(context)?.settings.arguments as Hadeth;
    return   DefaultScreen(body:  Scaffold(
      appBar: AppBar(
        title:Text(hadeth.hadethTitle),
      ),
      body: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          elevation: 24,
          margin: const EdgeInsets.symmetric(vertical: 64,horizontal: 24),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Text(hadeth.hadethContent,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 20
                    ),
                    ),
                  ),
                ),
              ),
            ],
          )
      ),
    ));
  }
}
