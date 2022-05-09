import 'package:flutter/material.dart';
import 'package:fooddelivery/app_colors.dart';
import 'package:fooddelivery/widgets/custom_big_text.dart';
import 'package:fooddelivery/widgets/custom_small_text.dart';
import 'package:fooddelivery/widgets/food_lower_details.dart';

class DashboardPageviewItem extends StatefulWidget {
  final int index;
  final double pageValue;
  const DashboardPageviewItem(
      {Key? key, required this.index, required this.pageValue})
      : super(key: key);

  @override
  State<DashboardPageviewItem> createState() => _DashboardPageviewItemState();
}

class _DashboardPageviewItemState extends State<DashboardPageviewItem> {
  @override
  Widget build(BuildContext context) {
    double _scaleFactor = 0.8;
    Matrix4 matrix = Matrix4.identity();
    int _height = 220;
    if (widget.index == widget.pageValue.floor()) {
      double currentScale =
          1 - (widget.pageValue - widget.index) * (1 - _scaleFactor);
      double currentTransformation = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransformation, 0);
    } else if (widget.index == widget.pageValue.floor() + 1) {
      double currentScale = _scaleFactor +
          (widget.pageValue - widget.index + 1) * (1 - _scaleFactor);
      double currentTransformation = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransformation, 0);
    } else if (widget.index == widget.pageValue.floor() - 1) {
      double currentScale =
          1 - (widget.pageValue - widget.index) * (1 - _scaleFactor);
      double currentTransformation = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransformation, 0);
    } else {
      double currentScale = 0.8;

      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
    }
    return Transform(
      transform: matrix,
      child: Container(
        child: Stack(
          children: [
            Container(
              height: 220,
              margin: const EdgeInsets.only(left: 12, right: 12),
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/foodimage1.png")),
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.yellowColor),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 120,
                margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xFFe8e8e8),
                          blurRadius: 5.0,
                          offset: Offset(0, 5)),
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 5.0,
                          offset: Offset(-5, 0)),
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 5.0,
                          offset: Offset(5, 0)),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
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
        ),
      ),
    );
  }
}
