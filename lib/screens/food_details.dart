import 'package:flutter/material.dart';
import 'package:fooddelivery/app_colors.dart';
import 'package:fooddelivery/utils/dimensions.dart';

import '../widgets/custom_big_text.dart';
import '../widgets/custom_small_text.dart';
import '../widgets/food_lower_details.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: AppDimensions.foodDetailsImageHeight,
              decoration: const BoxDecoration(
                  color: AppColors.yellowColor,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/foodimage1.png"))),
            )),
        Positioned(
            top: AppDimensions.width20,
            left: AppDimensions.width20,
            right: AppDimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: AppDimensions.height40,
                  width: AppDimensions.height40,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppDimensions.height20),
                      color: const Color(0XFFfcf4e4)),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: AppDimensions.iconsSize15,
                  ),
                ),
                Container(
                  height: AppDimensions.height40,
                  width: AppDimensions.height40,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppDimensions.height20),
                      color: const Color(0XFFfcf4e4)),
                  child: Icon(
                    Icons.shopping_cart_checkout_outlined,
                    color: Colors.black,
                    size: AppDimensions.iconsSize15,
                  ),
                ),
              ],
            )),
        Positioned(
            left: 0,
            right: 0,
            top: AppDimensions.foodDetailsImageHeight - AppDimensions.height20,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                  left: AppDimensions.width20,
                  right: AppDimensions.width20,
                  top: AppDimensions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppDimensions.radius20),
                      topRight: Radius.circular(AppDimensions.radius20)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomBigText(
                      color: Colors.black, text: "Chinese Side"),
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
              ),
            ))
      ]),
    );
  }
}
