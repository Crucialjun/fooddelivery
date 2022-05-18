import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../utils/dimensions.dart';
import 'custom_big_text.dart';
import 'custom_small_text.dart';
import 'food_lower_details.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomBigText(
          color: Colors.black,
          text: text,
          fontSize: AppDimensions.font26,
        ),
        SizedBox(
          height: AppDimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: AppColors.mainColor,
                        size: AppDimensions.iconsSize15,
                      )),
            ),
            SizedBox(
              width: AppDimensions.width10,
            ),
            const CustomSmallText(text: "4.5"),
            SizedBox(
              width: AppDimensions.width10,
            ),
            const CustomSmallText(text: "1287 comments"),
          ],
        ),
        SizedBox(
          height: AppDimensions.height20,
        ),
        const FoodsLowerDetails()
      ],
    );
  }
}
