// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String? text;
  FontWeight? fontWeight;
  double? fontSize;
  Color? color;
  TextAlign? textAlign;
  CustomText({
    Key? key,
    this.text,
    this.fontWeight,
    this.fontSize = 16,
    this.color = const Color.fromRGBO(98, 108, 120, 1),
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: textAlign,
      style:
          TextStyle(fontWeight: fontWeight, fontSize: fontSize, color: color),
    );
  }
}
