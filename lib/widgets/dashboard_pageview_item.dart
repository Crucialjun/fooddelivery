import 'package:flutter/material.dart';
import 'package:fooddelivery/app_colors.dart';
import 'package:fooddelivery/utils/dimensions.dart';
import 'package:fooddelivery/widgets/app_column.dart';

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
    double _height = AppDimensions.pageviewImageContainer;
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
      child: Stack(
        children: [
          Container(
            height: AppDimensions.pageviewImageContainer,
            margin: EdgeInsets.only(
                left: AppDimensions.width15, right: AppDimensions.width15),
            decoration: BoxDecoration(
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/foodimage1.png")),
                borderRadius: BorderRadius.circular(AppDimensions.radius30),
                color: AppColors.yellowColor),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: AppDimensions.pageviewTextContainer,
              margin: EdgeInsets.only(
                  left: AppDimensions.width30,
                  right: AppDimensions.width30,
                  bottom: AppDimensions.height30),
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
                  borderRadius: BorderRadius.circular(AppDimensions.radius20),
                  color: Colors.white),
              child: Container(
                  padding: EdgeInsets.only(
                      top: AppDimensions.height15,
                      left: AppDimensions.width15,
                      right: AppDimensions.width15),
                  child: const AppColumn(
                    text: "Chinese Side",
                  )),
            ),
          )
        ],
      ),
    );
  }
}
