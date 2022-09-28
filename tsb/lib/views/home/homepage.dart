import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tsb/views/home/widgets/body_home_page.dart';
import 'package:tsb/views/home/widgets/box_list_body.dart';
import 'package:tsb/views/home/widgets/custom_container.dart';
import 'package:tsb/views/home/widgets/custom_drawer.dart';
import 'package:tsb/views/home/widgets/method_app_bar.dart';
import '../auth/widget/custom_text.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  String price = '28.22';
  String lastlogin = '3 sep 22 at 13:28';
  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.of(context).size.width;
    var sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBarHome(),
      endDrawerEnableOpenDragGesture: false,
      backgroundColor: Colors.blueGrey[100],
      drawer: CustomDrawer(sizeWidth: sizeWidth, lastlogin: lastlogin),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
          width: sizeWidth,
          height: sizeHeight,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomContainer(
                    sizeWidth: sizeWidth * 0.55,
                    height: 35,
                    borderRaduisCircular: 16,
                    children: [
                      CustomText(
                          text: 'Terry\'s Computing Ltd',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500)
                    ],
                    fontSize: 18,
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              BodyHomePage(sizeWidth: sizeWidth),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 8,
                    itemBuilder: (context, index) => BoxListBody(
                          onTap: () {
                            Get.toNamed('/pyment');
                          },
                          price: price,
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
