import 'package:flutter/material.dart';
import 'package:islami_c11/ui/home/home_screen.dart';
import 'package:islami_c11/ui/ui_utils.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splash";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      // this will be executed after duration
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Image.asset(
        getFullPathImage(
          "splash.jpg",
        ),
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
