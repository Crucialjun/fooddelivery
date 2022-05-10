import 'package:flutter/material.dart';
import 'package:fooddelivery/app_colors.dart';
import 'package:fooddelivery/utils/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSmallText extends StatelessWidget {
  final Color color;
  final String text;
  const CustomSmallText({
    Key? key,
    this.color = AppColors.titleColor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
          height: AppDimensions.textHeight1pt2,
          color: color,
          fontFamily: GoogleFonts.roboto().fontFamily,
          fontSize: AppDimensions.font12),
    );
  }
}
