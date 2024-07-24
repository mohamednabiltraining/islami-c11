import 'package:flutter/material.dart';

class MyThemeData {
  // Todo: add dark theme
  static final Color lightPrimary = Color(0xFFB7935F);
  static final Color darkPrimary = Color(0xFF141A2E);
  static final Color darkSecondary = Color(0xFFFACC1D);
  static const bool isDark = false;

  static final ThemeData lightTheme = ThemeData(
      textTheme: TextTheme(
        titleMedium: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Messiri',
            color: Colors.black),
        titleSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            fontFamily: 'Messiri',
            color: Colors.black),
        bodyLarge: TextStyle(fontSize: 25, color: Colors.black),
        bodyMedium: TextStyle(fontSize: 20, color: Colors.black),
      ),
      cardTheme: CardTheme(color: Colors.white, surfaceTintColor: null),
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

  static final ThemeData darkTheme = ThemeData(
      textTheme: TextTheme(
        titleMedium: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Messiri',
            color: Colors.white),
        titleSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            fontFamily: 'Messiri',
            color: Colors.white),
        bodyLarge: TextStyle(fontSize: 25, color: Colors.white),
        bodyMedium: TextStyle(fontSize: 20, color: Colors.white),
      ),
      cardTheme: CardTheme(color: darkPrimary, surfaceTintColor: null),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: darkPrimary,
          selectedItemColor: darkSecondary,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(size: 32)
          // selectedIconTheme: IconThemeData(),
          // unselectedIconTheme: IconThemeData(),
          // selectedLabelStyle: ,
          // unselectedLabelStyle: ,
          ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
      colorScheme: ColorScheme.fromSeed(
          primary: darkPrimary,
          seedColor: darkPrimary,
          onPrimary: Colors.white,
          secondary: darkPrimary,
          onSecondary: Colors.black));
}
