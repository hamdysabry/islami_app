import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/setting_provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingProvider = Provider.of<SettingProvider>(context);

    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                settingProvider.changeLanguage("en");
              },
              child: settingProvider.currentLocal == "en"
                  ? getSelectedItem("English")
                  : getUnselectedItem("English")),
          SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                settingProvider.changeLanguage("ar");
              },
              child: settingProvider.currentLocal == "en"
                  ? getUnselectedItem("عربي")
                  : getSelectedItem("عربي")),
        ],
      ),
    );
  }

  Widget getSelectedItem(String title) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: Theme.of(context).accentColor),
          ),
          Icon(
            Icons.check,
            color: Theme.of(context).accentColor,
          )
        ],
      ),
    );
  }

  Widget getUnselectedItem(String title) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
