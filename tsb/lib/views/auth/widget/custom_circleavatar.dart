// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  double? raduis;
  String? backgroundImagePath;
  CustomCircleAvatar({
    Key? key,
    this.raduis = 35,
    required this.backgroundImagePath,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: raduis, backgroundImage: AssetImage(backgroundImagePath!));
  }
}
