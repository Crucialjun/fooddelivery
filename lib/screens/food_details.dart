import 'package:flutter/material.dart';
import 'package:fooddelivery/app_colors.dart';
import 'package:fooddelivery/utils/dimensions.dart';
import 'package:fooddelivery/widgets/app_column.dart';
import 'package:fooddelivery/widgets/custom_big_text.dart';
import 'package:fooddelivery/widgets/expandable_text_widget.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(children: [
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
              top:
                  AppDimensions.foodDetailsImageHeight - AppDimensions.height20,
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
                    const AppColumn(text: "Chinese Side"),
                    SizedBox(
                      height: AppDimensions.height20,
                    ),
                    const CustomBigText(color: Colors.black, text: "Introduce"),
                    const ExpandableText(
                        text:
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum")
                  ],
                ),
              )),
        ]),
      ),
      bottomNavigationBar: Container(
        height: AppDimensions.height120,
        padding: EdgeInsets.only(
            top: AppDimensions.height30,
            bottom: AppDimensions.height30,
            right: AppDimensions.width20,
            left: AppDimensions.width20),
        decoration: BoxDecoration(
            color: AppColors.buttonBackGroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppDimensions.radius20 * 2),
                topRight: Radius.circular(AppDimensions.radius20 * 2))),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppDimensions.radius20),
                color: Colors.white),
            child: Padding(
              padding: EdgeInsets.all(AppDimensions.height20),
              child: Row(children: [
                const Icon(
                  Icons.remove,
                  color: AppColors.signColor,
                ),
                SizedBox(
                  width: AppDimensions.width10 / 2,
                ),
                const CustomBigText(color: AppColors.signColor, text: "0"),
                SizedBox(
                  width: AppDimensions.width10 / 2,
                ),
                const Icon(
                  Icons.add,
                  color: AppColors.signColor,
                ),
              ]),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppDimensions.radius20),
                color: AppColors.mainColor),
            child: Padding(
                padding: EdgeInsets.all(AppDimensions.height20),
                child: const CustomBigText(
                  text: "\$10 | Add to Cart ",
                  color: Colors.white,
                )),
          )
        ]),
      ),
    );
  }
}
