import 'package:flutter/material.dart';

class MyThemeData {
  // Todo: add dark theme
  static final Color lightPrimary = Color(0xFFB7935F);

  static final ThemeData lightTheme = ThemeData(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: lightPrimary,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(size: 32)
          // selectedIconTheme: IconThemeData(),
          // unselectedIconTheme: IconThemeData(),
          // selectedLabelStyle: ,
          // unselectedLabelStyle: ,
          ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)),
      colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFB7935F),
          primary: Color(0xFFB7935F),
          onPrimary: Colors.white,
          secondary: Color(0xFFB7935F),
          onSecondary: Colors.black));
}
