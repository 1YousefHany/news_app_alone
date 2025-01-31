import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text,  this.color, this.fontSize,  this.fontWeight, this.maxLines, this.textOverflow});
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final int? maxLines ;
  final TextOverflow? textOverflow;
  @override
  Widget build(BuildContext context) {
    return  Text( text,
      maxLines: maxLines,
      style: TextStyle(
        color: color,
          fontSize: fontSize ?? 14,
          fontWeight: fontWeight ?? FontWeight.w400,
        overflow: textOverflow
      ),
    );
  }
}