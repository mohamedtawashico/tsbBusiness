import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tsb/views/auth/controller/auth_controller.dart';
import 'package:tsb/views/auth/widget/content_login.dart';
import 'package:tsb/views/auth/widget/custom_text.dart';
import 'package:tsb/views/auth/widget/custom_textbutton.dart';
import 'package:tsb/views/auth/widget/texteditor_formField.dart';

class ContentLoginVerify extends StatelessWidget {
  ContentLoginVerify({
    Key? key,
  }) : super(key: key);
  bool isLogin = false;
  AuthController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    var size = Get.size;

    return controller.isLogin
        ? Column(
            children: [
              CustomText(
                text: 'Hello bashar Louzoun.',
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                height: size.height * 0.012,
              ),
              CustomText(
                text:
                    'Enter the 1st 5th and 6th chacter of your memorible information',
                fontSize: 10,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.visibility, size: 16),
                  const SizedBox(width: 6),
                  CustomText(
                    text: 'enter the 1st 5th and 6th',
                    fontSize: 10,
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.003,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextEditorForPhoneVerify("1st"),
                  TextEditorForPhoneVerify("2st"),
                  TextEditorForPhoneVerify("3st")
                ],
              ),
              SizedBox(
                height: size.height * 0.003,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextButton(onPressed: (() {}), text: 'Back'),
                  CustomTextButton(
                      onPressed: (() {
                        Get.offNamed("/homePage");
                      }),
                      text: 'Login'),
                ],
              ),
            ],
          )
        : CircularProgressIndicator();
  }
}
