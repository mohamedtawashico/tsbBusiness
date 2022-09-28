import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:tsb/views/auth/widget/custom_elevatedbutton.dart';
import 'package:tsb/views/home/widgets/sliver/list.dart';
import 'package:tsb/views/home/widgets/body_calender_sliver.dart';
import 'package:tsb/views/home/widgets/method_app_bar.dart';
import 'package:tsb/views/home/widgets/sliver.dart';

class Pyment extends StatelessWidget {
  const Pyment({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeWidth = Get.width;
    var sizeHeight = Get.height;
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: customAppBar(),
      body: Container(
        margin: EdgeInsets.only(top: 16),
        child: Column(
          children: [
            BodyPyment(),
            Expanded(child: Lists()),
          ],
        ),
      ),
    );
  }
}
