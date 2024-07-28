import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LocaleProvider extends ChangeNotifier {
  String currentLocale = 'en';

  void changeLocale(String newLocale) {
    currentLocale = newLocale;
    notifyListeners();
  }

  String getCurrentLocaleText() {
    return currentLocale == 'en' ? "English" : "العربيه";
  }

  static LocaleProvider get(BuildContext context) {
    return Provider.of<LocaleProvider>(context);
  }
}
