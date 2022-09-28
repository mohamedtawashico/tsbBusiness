import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodyCalenderSliver extends StatelessWidget {
  BodyCalenderSliver({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sizeWidth = Get.width;
    var sizeHeight = Get.height;
    return Container(
      width: sizeWidth,
      height: sizeHeight * 0.08,
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.only(left: 16, right: 0.0),
      decoration: BoxDecoration(
          color: Colors.white60, borderRadius: BorderRadius.circular(0.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const CircleAvatar(
                maxRadius: 18,
                backgroundColor: Colors.grey,
                child: Text(
                  'JL',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'jen dep cd fab gack',
                    style: TextStyle(
                        color: Color.fromARGB(255, 31, 111, 175),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '02 september',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                width: sizeWidth * 0.215,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    '-\$96.23',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '\$28.26',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
