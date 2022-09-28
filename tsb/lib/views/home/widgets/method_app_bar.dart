import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar CustomAppBarHome() {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.blueGrey[100],
    leading: Builder(builder: (context) {
      return GestureDetector(
        onTap: (() {
          Scaffold.of(context).openDrawer();
        }),
        child: Center(
          child: Image.asset(
            'assets/images/profile.png',
            width: 38,
            height: 38,
          ),
        ),
      );
    }),
    title: Image.asset(
      'assets/images/busine.png',
      width: 80,
      height: 80,
    ),
    centerTitle: true,
    elevation: 0,
  );
}

PreferredSizeWidget customAppBar() {
  return AppBar(
    elevation: 1,
    backgroundColor: Colors.white,
    leading: IconButton(
      onPressed: () {
        Get.back();
      },
      splashRadius: 5,
      icon: Icon(
        Icons.arrow_back_ios_new_rounded,
        color: Colors.blue[900],
      ),
    ),
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'fixed Fee Acount',
          style: TextStyle(color: Colors.black),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '80-80-80',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(
                width: 10,
                height: 16,
                child: VerticalDivider(
                  thickness: 1.3,
                  color: Colors.grey,
                )),
            Text(
              '000999',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      ],
    ),
    centerTitle: true,
    actions: [
      IconButton(
        onPressed: () {},
        splashRadius: 5,
        icon: Icon(
          Icons.search,
          color: Colors.blue[900],
        ),
      ),
      IconButton(
        onPressed: () {},
        splashRadius: 5,
        icon: Icon(
          Icons.more_vert_outlined,
          color: Colors.blue[900],
        ),
      ),
    ],
  );
}
