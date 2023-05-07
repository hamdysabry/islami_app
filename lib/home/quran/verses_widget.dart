import 'package:flutter/material.dart';

class VersesWidget extends StatelessWidget {
  String content;
  int index;

  VersesWidget(this.content, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Column(
        children: [
          Text(
            "$content ($index) ",
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              color: Theme.of(context).accentColor,
            ),
          ),
        ],
      ),
    );
  }
}
