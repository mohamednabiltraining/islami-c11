import 'package:flutter/material.dart';
import 'package:islami_c11/ui/chapterDetails/chapter_details.dart';
import 'package:islami_c11/ui/home/home_screen.dart';
import 'package:islami_c11/ui/splash/splash_screen.dart';
import 'package:islami_c11/ui/theme/MyTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetails.routeName: (_) => ChapterDetails(),
      },
      theme: MyThemeData.lightTheme,
    );
  }
}
