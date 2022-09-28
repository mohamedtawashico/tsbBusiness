import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    this.color,
  }) : super(key: key);

  String? text;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(text!,
        style: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight,
        ));
  }
}
