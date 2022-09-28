import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile(
      {Key? key, required this.text, required this.iconleading, this.ontap})
      : super(key: key);
  String? text;
  Icon? iconleading;
  void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: iconleading!,
        title: Text(
          text!,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.blue,
        ),
        onTap: ontap);
  }
}
