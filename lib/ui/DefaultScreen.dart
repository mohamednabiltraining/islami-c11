import 'package:flutter/material.dart';
import 'package:islami_c11/ui/providers/ThemeProvider.dart';
import 'package:islami_c11/ui/ui_utils.dart';
import 'package:provider/provider.dart';

class DefaultScreen extends StatelessWidget {
  Widget body;

  DefaultScreen({required this.body, super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider provider = Provider.of<ThemeProvider>(context);
    bool isDark = provider.isDarkEnabled();

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
