import 'package:flutter/material.dart';
import 'package:islami_c11/ui/DefaultScreen.dart';
import 'package:islami_c11/ui/home/BottomNavItem.dart';
import 'package:islami_c11/ui/home/hadeth/hadeth_tab.dart';
import 'package:islami_c11/ui/home/quran/quran_tab.dart';
import 'package:islami_c11/ui/home/radio/radio_tab.dart';
import 'package:islami_c11/ui/home/tasbeh/tasbeh_tab.dart';

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
          "Islami",
          style: Theme.of(context).textTheme.titleMedium,
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
          BottomNavItem(
              "Quran", 'ic_quran.png', Theme.of(context).colorScheme.primary),
          BottomNavItem(
              "Hadeth", 'ic_hadeth.png', Theme.of(context).colorScheme.primary),
          BottomNavItem(
              "Tasbeh", 'ic_sebha.png', Theme.of(context).colorScheme.primary),
          BottomNavItem(
              "Radio", 'ic_radio.png', Theme.of(context).colorScheme.primary),
        ],
      ),
    ));
  }

  var tabs = [QuranbTab(), HadethTab(), TasbehTab(), RadioTab()];
}
