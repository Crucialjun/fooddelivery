import 'package:flutter/material.dart';

class DashboardPageviewItem extends StatelessWidget {
  final int index;
  const DashboardPageviewItem({Key? key, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(left: 12, right: 12),
          decoration: BoxDecoration(
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/foodimage1.png")),
              borderRadius: BorderRadius.circular(30),
              color: index.isEven ? Colors.yellow : Colors.blue),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 140,
            margin: const EdgeInsets.only(left: 40, right: 40, bottom: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
          ),
        )
      ],
    );
  }
}
