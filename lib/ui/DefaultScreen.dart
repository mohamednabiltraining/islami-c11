import 'package:flutter/material.dart';
import 'package:islami_c11/ui/theme/MyTheme.dart';
import 'package:islami_c11/ui/ui_utils.dart';

class DefaultScreen extends StatelessWidget {
  Widget body;

  DefaultScreen({required this.body, super.key});

  @override
  Widget build(BuildContext context) {
    ///todo: use provider to get theme mode
    bool isDark = MyThemeData.isDark;
    return Stack(children: [
      Image.asset(
        getFullPathImage(
            isDark ? "dark_main_background.png" : "main_background.jpg"),
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
      body
    ]);
  }
}
