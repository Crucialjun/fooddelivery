import 'package:flutter/material.dart';
import 'package:fooddelivery/utils/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBigText extends StatelessWidget {
  final Color color;
  final String text;
  final double fontSize;
  const CustomBigText(
      {Key? key, required this.color, required this.text, this.fontSize = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontFamily: GoogleFonts.roboto().fontFamily,
          fontSize: fontSize == 0 ? AppDimensions.font20 : fontSize),
    );
  }
}
