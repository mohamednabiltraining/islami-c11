import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c11/ui/chapterDetails/chapter_details.dart';
import 'package:islami_c11/ui/hadethDetails/hadeth_details.dart';
import 'package:islami_c11/ui/home/home_screen.dart';
import 'package:islami_c11/ui/providers/LocaleProvider.dart';
import 'package:islami_c11/ui/providers/ThemeProvider.dart';
import 'package:islami_c11/ui/splash/splash_screen.dart';
import 'package:islami_c11/ui/theme/MyTheme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var sharedPreferences = await SharedPreferences.getInstance();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(sharedPreferences),
    ),
    ChangeNotifierProvider(
      create: (_) => LocaleProvider(sharedPreferences),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = ThemeProvider.get(context);
    LocaleProvider localeProvider = LocaleProvider.get(context);

    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetails.routeName: (_) => ChapterDetails(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen(),
      },
      theme: MyThemeData.lightTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(localeProvider.currentLocale),
      themeMode: themeProvider.currentTheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}
