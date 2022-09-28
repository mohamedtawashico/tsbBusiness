import 'package:flutter/material.dart';
import 'widget/content_login.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({
    Key? key,
  }) : super(key: key);

  String? title;

  TextEditingController code1 = TextEditingController();

  TextEditingController code2 = TextEditingController();

  TextEditingController code3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/images/busine.png",
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Container(
                  height: 400,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ContentLogin(
                    size: size,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
