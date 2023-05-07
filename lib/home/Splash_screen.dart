import 'package:flutter/material.dart';
import 'package:islami_app/home/home_screen.dart';
import 'package:islami_app/home/provider/setting_provider.dart';
import 'package:provider/provider.dart';

class splashScreen extends StatelessWidget {
  static const String routName = "Splash Screen ";

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, homeScreen.routName);
    });
    return Scaffold(
      body: Container(
        child: Image.asset(settingProvider.getSplashScreen()),
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
