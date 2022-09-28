import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:tsb/views/auth/login_screen.dart';
import 'package:tsb/views/home/homepage.dart';
import 'package:tsb/views/home/widgets/pyment.dart';
import 'package:tsb/views/home/widgets/sliver.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:tsb/views/home/widgets/sliver/list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        iconTheme: const IconThemeData(
            color: Color.fromARGB(255, 17, 71, 115), size: 27),
        textTheme: const TextTheme(
          subtitle1: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          bodyText1: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(2460, name: '4K'),
        ],
      ),
      initialRoute: '/login',
      getPages: [
        GetPage(
          name: '/login',
          page: (() => LoginScreen()),
        ),
        GetPage(
          name: '/homePage',
          page: (() => HomePage()),
        ),
        GetPage(
          name: '/pyment',
          page: (() => Pyment()),
        ),
      ],
      home: Pyment(),
    );
  }
}
