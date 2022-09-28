// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  double? height;
  double? sizeWidth;
  double? fontSize;
  Color? color;
  FontWeight? fontWeight;
  double? borderRaduisCircular;
  List<Widget>? children;
  CustomContainer({
    Key? key,
    this.height,
    required this.sizeWidth,
    this.fontSize = 16,
    this.color,
    this.fontWeight = FontWeight.w400,
    this.borderRaduisCircular = 8,
    required this.children,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        width: sizeWidth,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(),
          color: color,
          borderRadius: BorderRadius.circular(borderRaduisCircular!),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children!));
  }
}
