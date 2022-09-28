import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:tsb/views/auth/controller/auth_controller.dart';
import 'package:tsb/views/auth/widget/content_login_verify.dart';
import 'package:tsb/views/auth/widget/custom_elevatedbutton.dart';
import 'package:tsb/views/auth/widget/texteditor_formField.dart';
import 'package:tsb/views/auth/widget/custom_text.dart';
import 'package:tsb/views/auth/widget/custom_textbutton.dart';
import 'package:tsb/views/auth/widget/header_image_login.dart';
import 'package:get/get.dart';

class ContentLogin extends StatelessWidget {
  ContentLogin({Key? key, this.size}) : super(key: key);
  // bool isLogin = false;
  Size? size;
  var controller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    void _onLoading() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              margin: EdgeInsets.all(40),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(
                    width: 16,
                  ),
                  CustomText(
                    text: "Loading...",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
          );
        },
      );
      Future.delayed(Duration(seconds: 3), () {
        Navigator.pop(context);
        controller.changeWidget();
      });
    }

    return GetBuilder<AuthController>(
      builder: (controller) => Column(
        children: [
          const HeaderImagesLogin(),
          SizedBox(
            height: size!.height * 0.015,
          ),
          (controller.isLogin)
              ? ContentLoginVerify()
              : CustomElevatedButton(
                  text: 'Login',
                  onPressed: () {
                    _onLoading();
                  })
        ],
      ),
    );
  }
}
