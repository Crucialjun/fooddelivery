import 'package:flutter/material.dart';
import 'package:fooddelivery/app_colors.dart';
import 'package:fooddelivery/widgets/custom_small_text.dart';

class FoodsLowerDetails extends StatelessWidget {
  const FoodsLowerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Icon(
              Icons.circle_sharp,
              color: AppColors.yellowColor,
            ),
            SizedBox(
              width: 5,
            ),
            CustomSmallText(text: "Normal")
          ],
        ),
        const SizedBox(
          width: 15,
        ),
        Row(
          children: const [
            Icon(
              Icons.location_on,
              color: AppColors.mainColor,
            ),
            SizedBox(
              width: 5,
            ),
            CustomSmallText(text: "1.7km")
          ],
        ),
        const SizedBox(
          width: 15,
        ),
        Row(
          children: const [
            Icon(
              Icons.access_time_rounded,
              color: AppColors.iconColor2,
            ),
            SizedBox(
              width: 5,
            ),
            CustomSmallText(text: "32min")
          ],
        ),
      ],
    );
  }
}
