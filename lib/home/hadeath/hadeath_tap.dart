import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/home/hadeath/Hadeath_title_widget.dart';

import 'Hadeath_Detalis.dart';
import 'Hadeath_data_class.dart';

class HadeathTap extends StatefulWidget {
  @override
  State<HadeathTap> createState() => _HadeathTapState();
}

class _HadeathTapState extends State<HadeathTap> {
  List<HadeathDataClass> allHadeath = [];

  @override
  Widget build(BuildContext context) {
    if (allHadeath.isEmpty) {
      loadHadeathfile();
    }
    return Container(
      child: Column(
        children: [
          Image.asset("assets/images/hadeath_header.png"),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, HadeathDetalis.routeName,
                          arguments: allHadeath[index]);
                    },
                    child: HadeathTitleWidget(allHadeath[index].title));
              },
              separatorBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 80),
                child: Divider(
                  color: Theme.of(context).accentColor,
                  thickness: 1.2,
                ),
              ),
              itemCount: allHadeath.length,
            ),
          ),
        ],
      ),
    );
  }

  void loadHadeathfile() async {
    // List<HadeathDataClass> list = [];
    String content = await rootBundle.loadString("assets/files/ahadeth .txt");
    List<String> allcontent = content.split("#");
    for (int i = 0; i < allcontent.length; i++) {
      String SingleHadeathContent = allcontent[i].trim();
      String title =
          SingleHadeathContent.substring(0, SingleHadeathContent.indexOf("\n"));
      String content = SingleHadeathContent.substring(
          SingleHadeathContent.indexOf("\n") + 1);
      HadeathDataClass Hadeath = HadeathDataClass(title, content);
      // list.add(Hadeath);
      allHadeath.add(Hadeath);
      setState(() {});
    }
    // allHadeath.addAll(list);
    // setState(() {});
  }
}
