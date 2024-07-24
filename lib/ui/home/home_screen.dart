import 'package:flutter/material.dart';
import 'package:islami_c11/ui/DefaultScreen.dart';
import 'package:islami_c11/ui/home/BottomNavItem.dart';
import 'package:islami_c11/ui/home/hadeth/hadeth_tab.dart';
import 'package:islami_c11/ui/home/quran/quran_tab.dart';
import 'package:islami_c11/ui/home/radio/radio_tab.dart';
import 'package:islami_c11/ui/home/tasbeh/tasbeh_tab.dart';
import 'package:islami_c11/ui/ui_utils.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
        body: Scaffold(
      appBar: AppBar(
        title: Text(
          appTranslations(context).appTitle,
        ),
      ),
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavItem(appTranslations(context).quranTab, 'ic_quran.png'),
          BottomNavItem(appTranslations(context).hadethTab, 'ic_hadeth.png'),
          BottomNavItem(appTranslations(context).tasbehTab, 'ic_sebha.png'),
          BottomNavItem(appTranslations(context).radioTab, 'ic_radio.png'),
        ],
      ),
    ));
  }

  var tabs = [QuranbTab(), HadethTab(), TasbehTab(), RadioTab()];
}
