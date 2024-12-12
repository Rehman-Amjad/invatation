
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  int? maxLine;
  final bool softWrap;
  final Color color;
  final ValueKey? keyValue;
  double? lineHeight;
   TextDecoration? textDecoration;
   TextOverflow? overflow;
   AppTextWidget({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.color = AppColors.black,
    this.textAlign = TextAlign.center,
    this.textDecoration,
    this.fontSize = 12,
    this.softWrap = true,
    this.keyValue,
    this.overflow,
    this.maxLine,
    this.lineHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      key: keyValue,
      text,
      textAlign: textAlign,
      softWrap: softWrap,
      maxLines: maxLine,
      overflow: overflow ?? TextOverflow.clip,
      style: TextStyle(
        decoration: textDecoration ?? TextDecoration.none,
          decorationColor: Colors.black,
          fontWeight: fontWeight,
          fontSize: fontSize,
          height: lineHeight,
          color:  color,
      ),
    );
  }
}
