import 'package:flutter/material.dart';

class TasbehTap extends StatefulWidget {
  @override
  State<TasbehTap> createState() => _TasbehTapState();
}

class _TasbehTapState extends State<TasbehTap> {
  int counter = 0;
  List<String> tasbeah_data = [
    "سبحان الله",
    "الحمد لله",
    "لا اله الا  الله ",
    "الله اكبر",
    "لا حول ولا قوه الا بالله"
  ];
  int index = 0;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            tasbeah_tap();
          },
          child: Stack(
            children: [
              Positioned(
                left: 200,
                top: 10,
                child: Image.asset(
                  'assets/images/head of seb7a.png',
                  width: 72,
                  height: 102,
                ),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 100.0, vertical: 60),
                  child: Transform.rotate(
                    angle: angle,
                    child: Image.asset(
                      'assets/images/body of seb7a.png',
                      width: 232,
                      height: 234,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Text(
          "عدد التسبيحات",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              "$counter",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(25)),
          child: Text(tasbeah_data[index],
              style: Theme.of(context).textTheme.headlineMedium),
        )
      ],
    );
  }

  void tasbeah_tap() {
    counter++;
    if (counter % 33 == 0) {
      index++;
      counter = 0;
    }
    if (index == tasbeah_data.length) {
      index = 0;
      counter = 0;
    }
    angle += 11.0;
    setState(() {});
  }
}
