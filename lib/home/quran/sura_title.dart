import 'package:flutter/material.dart';
import 'package:islami_app/home/quran/sura_arg.dart';
import 'package:islami_app/home/quran/sura_detalis.dart';

class SuraTitle extends StatelessWidget {
  String title;
  int index;

  SuraTitle({required this.title, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetails.routName,
            arguments: SuraArg(title: title, index: index));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
