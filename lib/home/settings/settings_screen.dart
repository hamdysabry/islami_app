import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/home/settings/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';

import '../provider/setting_provider.dart';
import 'language_bottom_sheet.dart';

class SettingScreen extends StatefulWidget {
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.theme_title,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
              showthemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: theme.accentColor,
                    width: 1.5,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    settingProvider.isDark()
                        ? AppLocalizations.of(context)!.dark
                        : AppLocalizations.of(context)!.light,
                    style: theme.textTheme.bodySmall,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: theme.accentColor,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            AppLocalizations.of(context)!.language_title,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: theme.accentColor,
                    width: 1.5,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    settingProvider.currentLocal == "en" ? "English" : "عربي",
                    style: theme.textTheme.bodySmall,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: theme.accentColor,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void showthemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => ThemeBottomSheet(),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => LanguageBottomSheet());
  }
}
