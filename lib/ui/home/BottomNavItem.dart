import 'package:flutter/material.dart';
import 'package:islami_c11/ui/ui_utils.dart';

class BottomNavItem extends BottomNavigationBarItem {
  BottomNavItem(
    String title, Color backgroundColor,
      {String? iconPath, Icon? mainIcon = null})
      : super(
            icon: mainIcon != null
                ? mainIcon
                : ImageIcon(AssetImage(getFullPathImage(iconPath!))),
            label: title,
            // how to get theme object
            backgroundColor: backgroundColor);
}
