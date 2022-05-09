import 'package:flutter/material.dart';
import 'package:fooddelivery/app_colors.dart';
import 'package:fooddelivery/utils/dimensions.dart';
import 'package:fooddelivery/widgets/custom_small_text.dart';

class FoodsLowerDetails extends StatelessWidget {
  const FoodsLowerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.circle_sharp,
              color: AppColors.yellowColor,
              size: AppDimensions.iconsSize24,
            ),
            const SizedBox(
              width: 5,
            ),
            const CustomSmallText(text: "Normal")
          ],
        ),
        const SizedBox(
          width: 15,
        ),
        Row(
          children: [
            Icon(
              Icons.location_on,
              size: AppDimensions.iconsSize24,
              color: AppColors.mainColor,
            ),
            const SizedBox(
              width: 5,
            ),
            const CustomSmallText(text: "1.7km")
          ],
        ),
        const SizedBox(
          width: 15,
        ),
        Row(
          children: [
            Icon(
              Icons.access_time_rounded,
              color: AppColors.iconColor2,
              size: AppDimensions.iconsSize24,
            ),
            const SizedBox(
              width: 5,
            ),
            const CustomSmallText(text: "32min")
          ],
        ),
      ],
    );
  }
}
