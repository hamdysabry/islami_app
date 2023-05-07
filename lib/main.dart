import 'package:flutter/material.dart';
import 'package:islami_app/home/Splash_screen.dart';
import 'package:islami_app/home/hadeath/Hadeath_Detalis.dart';
import 'package:islami_app/home/home_screen.dart';
import 'package:islami_app/home/my_theme.dart';
import 'package:islami_app/home/provider/setting_provider.dart';
import 'package:islami_app/home/quran/sura_detalis.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'islami',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: settingProvider.currentTheme,
      locale: Locale(settingProvider.currentLocal),
      routes: {
        homeScreen.routName: (context) => homeScreen(),
        splashScreen.routName: (context) => splashScreen(),
        SuraDetails.routName: (context) => SuraDetails(),
        HadeathDetalis.routeName: (context) => HadeathDetalis(),
      },
      initialRoute: splashScreen.routName,
    );
  }
}
