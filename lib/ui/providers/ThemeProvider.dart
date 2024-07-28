// observable - subject- provider
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeMode currentTheme;
  static const String isDarkTheme = "theme";
  final SharedPreferences prefs;

  ThemeProvider(this.prefs) {
    // DI // injectable
    readSavedTheme();
  }

  void readSavedTheme() {
    var isDark = prefs.getBool(isDarkTheme) ?? false;
    currentTheme = isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void saveTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(isDarkTheme, isDarkEnabled());
  }

  void changeTheme(ThemeMode newTheme) {
    currentTheme = newTheme;
    notifyListeners(); //
    saveTheme();
  }

  bool isDarkEnabled() {
    return currentTheme == ThemeMode.dark;
  }

  static ThemeProvider get(BuildContext context) {
    return Provider.of<ThemeProvider>(context);
  }
}
