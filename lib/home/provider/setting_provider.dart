import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.dark;
  String currentLocal = "en";

  void changeTheme(ThemeMode newMode) {
    if (newMode == currentTheme) return;

    currentTheme = newMode;
    notifyListeners();
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  String getMainBackGround() {
    return currentTheme == ThemeMode.dark
        ? "assets/images/main_background_dark.png"
        : "assets/images/main_background.png";
  }

  String getSplashScreen() {
    return currentTheme == ThemeMode.dark
        ? "assets/images/splash _dark.png"
        : "assets/images/splash.png";
  }

  void changeLanguage(String newlang) {
    if (newlang == currentLocal) return;

    currentLocal = newlang;
    notifyListeners();
  }
}
