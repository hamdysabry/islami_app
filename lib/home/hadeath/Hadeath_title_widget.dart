import 'package:flutter/material.dart';

class HadeathTitleWidget extends StatelessWidget {
  String title;

  HadeathTitleWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}
