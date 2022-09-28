// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:tsb/views/home/widgets/custom_text.dart';

class BoxListBody extends StatelessWidget {
  String? price;

  void Function()? onTap;
  BoxListBody({
    Key? key,
    required this.price,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.of(context).size.width;
    var sizeHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8.0),
        decoration: BoxDecoration(
            color: Colors.white60, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: 'fixed Fee Acount',
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomText(
                        text: '80-80-80',
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                    const SizedBox(
                      width: 10,
                      height: 16,
                      child: VerticalDivider(
                        thickness: 1.3,
                        color: Colors.grey,
                      ),
                    ),
                    CustomText(
                        text: '00005559',
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: sizeWidth * 0.4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "\$$price",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert_outlined,
                          color: Colors.blue[900],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: CustomText(
                        text: 'available: \$$price',
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
