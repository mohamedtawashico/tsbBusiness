// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'package:tsb/views/auth/widget/custom_text.dart';

class CustomElevatedButton extends StatelessWidget {
  Function()? onPressed;
  String? text;
  Color? backgroundColor;
  Color? textColor;
  CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.backgroundColor = const Color.fromARGB(255, 17, 71, 115),
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sizeWidth = Get.width;
    var sizeheight = Get.height;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        backgroundColor: backgroundColor,
        minimumSize: Size(sizeWidth, 48),
      ),
      child: CustomText(
        text: text,
        fontSize: 18,
        color: textColor,
      ),
    );
  }
}
