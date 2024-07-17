import 'package:flutter/material.dart';
import 'package:islami_c11/ui/ui_utils.dart';

class DefaultScreen extends StatelessWidget {
  Widget body;

  DefaultScreen({required this.body, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [Image.asset(getFullPathImage("main_background.jpg")), body]);
  }
}
