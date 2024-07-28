import 'package:flutter/material.dart';
import 'package:islami_c11/ui/DefaultScreen.dart';
import 'package:islami_c11/ui/home/BottomNavItem.dart';
import 'package:islami_c11/ui/home/hadeth/hadeth_tab.dart';
import 'package:islami_c11/ui/home/quran/quran_tab.dart';
import 'package:islami_c11/ui/home/radio/radio_tab.dart';
import 'package:islami_c11/ui/home/settings/SettingsTab.dart';
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
          getTranslations(context).appTitle,
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
            getTranslations(context).quranTab,
            Theme.of(context).colorScheme.primary,
            iconPath: 'ic_quran.png',
          ),
          BottomNavItem(
            getTranslations(context).hadethTab,
            Theme.of(context).colorScheme.primary,
            iconPath: 'ic_hadeth.png',
          ),
          BottomNavItem(getTranslations(context).tasbehTab,
              Theme.of(context).colorScheme.primary,
              iconPath: 'ic_sebha.png'),
          BottomNavItem(
            getTranslations(context).radioTab,
            Theme.of(context).colorScheme.primary,
            iconPath: 'ic_radio.png',
          ),
          BottomNavItem(getTranslations(context).settings,
              Theme.of(context).colorScheme.primary,
              mainIcon: Icon(Icons.settings)),
        ],
      ),
    ));
  }

  var tabs = [QuranbTab(), HadethTab(), TasbehTab(), RadioTab(), SettingsTab()];
}
