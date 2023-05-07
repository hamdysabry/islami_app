import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/home/hadeath/hadeath_tap.dart';
import 'package:islami_app/home/provider/setting_provider.dart';
import 'package:islami_app/home/quran/quran_tap.dart';
import 'package:islami_app/home/radio/radio_tap.dart';
import 'package:islami_app/home/sebha/sebha_tap.dart';
import 'package:islami_app/home/settings/settings_screen.dart';
import 'package:provider/provider.dart';

class homeScreen extends StatefulWidget {
  static const String routName = "home_screen";

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectedindex = 0;

  List<Widget> screensTap = [
    QuranTap(),
    HadeathTap(),
    TasbehTap(),
    RadioTap(),
    SettingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(settingProvider.getMainBackGround()),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
            title: Text(
          AppLocalizations.of(context)!.app_title,
        )),
        body: screensTap[selectedindex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
                selectedindex = index;
              });
            },
            currentIndex: selectedindex,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(AssetImage("assets/images/quran.png")),
                label: AppLocalizations.of(context)!.quran_title,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage("assets/images/hadeath.png")),
                label: AppLocalizations.of(context)!.hadeath_title,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage("assets/images/sebha.png")),
                label: AppLocalizations.of(context)!.tasbeh_title,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage("assets/images/radio.png")),
                label: AppLocalizations.of(context)!.radio_title,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.settings),
                label: AppLocalizations.of(context)!.setting_title,
              )
            ]),
      ),
    );
  }
}
