import 'package:cinehub_app/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final String? fontType;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? fontColor;

  CustomTextWidget({
    required this.text,
    this.fontType,
    this.fontSize,
    this.fontWeight,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontType ?? 'Poppins',
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: fontColor ?? darkPurple,
      ),
    );
  }
}
