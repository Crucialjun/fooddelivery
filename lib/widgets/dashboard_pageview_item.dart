import 'package:flutter/material.dart';
import 'package:fooddelivery/app_colors.dart';
import 'package:fooddelivery/widgets/custom_big_text.dart';
import 'package:fooddelivery/widgets/custom_small_text.dart';
import 'package:fooddelivery/widgets/food_lower_details.dart';

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
            height: 120,
            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomBigText(
                      color: Colors.black, text: "Chinese Side"),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                            5,
                            (index) => const Icon(
                                  Icons.star,
                                  color: AppColors.mainColor,
                                  size: 15,
                                )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const CustomSmallText(text: "4.5"),
                      const SizedBox(
                        width: 10,
                      ),
                      const CustomSmallText(text: "1287 comments"),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const FoodsLowerDetails()
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
