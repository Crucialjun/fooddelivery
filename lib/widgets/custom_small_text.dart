import 'package:flutter/material.dart';
import 'package:fooddelivery/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSmallText extends StatelessWidget {
  final Color color;
  final String text;
  final double textHeight;
  const CustomSmallText(
      {Key? key,
      this.color = AppColors.mainBlackColor,
      required this.text,
      this.textHeight = 1.2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
          height: textHeight,
          color: color,
          fontFamily: GoogleFonts.roboto().fontFamily,
          fontSize: 12),
    );
  }
}
