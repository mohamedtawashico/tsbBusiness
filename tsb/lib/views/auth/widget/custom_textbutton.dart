// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  String? text;
  Color? color;
  Function()? onPressed;
  CustomTextButton({
    Key? key,
    this.text,
    this.color = Colors.blue,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          text!,
          style: TextStyle(color: color),
        ));
  }
}
