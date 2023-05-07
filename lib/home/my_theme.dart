import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightprimary = Color(0xffB7935F);
  static const Color darkprimary = Color(0xff141A2E);
  static const Color yellow = Color(0xffFACC10);

  static final ThemeData lightTheme = ThemeData(
    primaryColor: lightprimary,
    accentColor: Colors.black,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 30,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: lightprimary,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(color: Colors.black, size: 36),
      selectedLabelStyle: TextStyle(color: Colors.black),
      selectedItemColor: Colors.black,
      unselectedIconTheme: IconThemeData(color: Colors.white, size: 24),
    ),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 30,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
    ),
    cardColor: Colors.white,
  );
  static final ThemeData darkTheme = ThemeData(
    accentColor: yellow,
    primaryColor: darkprimary,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      backgroundColor: lightprimary,
      selectedIconTheme: IconThemeData(color: yellow, size: 36),
      selectedLabelStyle: TextStyle(color: yellow),
      selectedItemColor: yellow,
      unselectedIconTheme: IconThemeData(color: Colors.white, size: 24),
    ),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 30,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    ),
    cardColor: darkprimary,
  );
}
