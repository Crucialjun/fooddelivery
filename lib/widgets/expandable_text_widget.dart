import 'package:flutter/material.dart';
import 'package:fooddelivery/app_colors.dart';
import 'package:fooddelivery/utils/dimensions.dart';
import 'package:fooddelivery/widgets/custom_small_text.dart';
import 'package:get/get.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText = true;

  double textHeight = AppDimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? CustomSmallText(text: firstHalf)
          : Column(
              children: [
                CustomSmallText(
                    text:
                        hiddenText ? "$firstHalf..." : "$firstHalf$secondHalf"),
                InkWell(
                  onTap: (() {}),
                  child: Row(children: const [
                    CustomSmallText(
                      text: "Show more",
                      color: AppColors.mainColor,
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: AppColors.mainColor,
                    )
                  ]),
                )
              ],
            ),
    );
  }
}
