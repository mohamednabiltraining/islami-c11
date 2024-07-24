import 'package:flutter/material.dart';
import 'package:islami_c11/ui/ui_utils.dart';

class BottomNavItem extends BottomNavigationBarItem {
  BottomNavItem(
    String title,
    String iconPath, Color backgroundColor) : super(
            icon: ImageIcon(AssetImage(getFullPathImage(iconPath))),
            label: title,
            // how to get theme object
            backgroundColor: backgroundColor);
}
