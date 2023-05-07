import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/home/hadeath/Hadeath_data_class.dart';
import 'package:provider/provider.dart';

import '../provider/setting_provider.dart';

class HadeathDetalis extends StatelessWidget {
  static const String routeName = "hadeath-detalis";

  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);

    var args = ModalRoute.of(context)?.settings.arguments as HadeathDataClass;
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
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 65),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      args.title,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Divider(
                        color: Theme.of(context).primaryColor,
                        thickness: 1.2,
                      ),
                    ),
                    Text(
                      args.content,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 26,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
