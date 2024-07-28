import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
  late String currentLocale;
  static const String langKey = "lang";
  final SharedPreferences prefs;

  LocaleProvider(this.prefs) {
    // get saved language
    readSavedLocale();
  }

  void readSavedLocale() async {
    currentLocale = prefs.getString(langKey) ?? 'en';
  }

  void saveLocale() {
    prefs.setString(langKey, currentLocale);
  }

  void changeLocale(String newLocale) {
    currentLocale = newLocale;
    notifyListeners();
    saveLocale();
    // save new Lang
  }

  String getCurrentLocaleText() {
    return currentLocale == 'en' ? "English" : "العربيه";
  }

  static LocaleProvider get(BuildContext context) {
    return Provider.of<LocaleProvider>(context);
  }
}
