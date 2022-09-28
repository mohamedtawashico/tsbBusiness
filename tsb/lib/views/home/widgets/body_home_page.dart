import 'package:flutter/material.dart';
import 'package:tsb/views/home/widgets/box_list_body.dart';
import 'package:tsb/views/home/widgets/custom_container.dart';

import '../../auth/widget/custom_text.dart';

class BodyHomePage extends StatelessWidget {
  BodyHomePage({
    Key? key,
    this.sizeWidth,
  }) : super(key: key);

  double? sizeWidth;
  String price = '28.22';

  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.of(context).size.width;
    var sizeHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomContainer(
              fontSize: 18,
              sizeWidth: sizeWidth * 0.7,
              height: 48,
              color: Colors.white38,
              borderRaduisCircular: 12,
              children: [
                SizedBox(
                  width: sizeWidth * 0.001,
                ),
                Icon(
                  Icons.credit_card,
                  color: Theme.of(context).iconTheme.color,
                ),
                SizedBox(
                  width: sizeWidth * 0.05,
                ),
                CustomText(
                    text: 'payments to approve',
                    fontSize: 18,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w600)
              ],
            ),
          ],
        ),
        SizedBox(
          height: sizeHeight * 0.02,
        ),
      ],
    );
  }
}
