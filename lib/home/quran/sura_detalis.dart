import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/home/quran/sura_arg.dart';
import 'package:islami_app/home/quran/verses_widget.dart';
import 'package:provider/provider.dart';

import '../provider/setting_provider.dart';

class SuraDetails extends StatefulWidget {
  static const String routName = "sura-details";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    SuraArg args = (ModalRoute.of(context)?.settings.arguments) as SuraArg;
    if (verses.isEmpty) readfile(args.index + 1);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(settingProvider.getMainBackGround()),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_title),
        ),
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              )
            : Card(
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 65),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: ListView.separated(
                  itemBuilder: (context, index) => Column(
                    children: [
                      VersesWidget(verses[index], index + 1),
                    ],
                  ),
                  itemCount: verses.length,
                  separatorBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Divider(
                      color: Theme.of(context).primaryColor,
                      thickness: .75,
                    ),
                  ),
                ),
              ),
      ),
    );
  }

  void readfile(int fileIndex) async {
    String fileContent =
        await rootBundle.loadString("assets/files/$fileIndex.txt");
    List<String> lines = fileContent.trim().split("\n");
    setState(() {
      verses = lines;
    });
  }
}
