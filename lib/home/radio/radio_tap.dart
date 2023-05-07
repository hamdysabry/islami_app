import 'package:flutter/material.dart';

class RadioTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          Image.asset("assets/images/radio_body.png"),
          SizedBox(
            height: 40,
          ),
          Text("اذاعه القرأن الكريم"),
          SizedBox(
            height: 40,
          ),
          Image.asset("assets/images/Radio_buttom.png"),
        ],
      ),
    );
  }
}
