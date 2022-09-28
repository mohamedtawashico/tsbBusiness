import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tsb/views/auth/widget/custom_text.dart';

import 'custom_textformfield.dart';

class TextEditorForPhoneVerify extends StatelessWidget {
  final String text;

  TextEditorForPhoneVerify(this.text);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        CustomText(
          text: text,
        ),
        SizedBox(
          height: size.height * 0.003,
        ),
        const SizedBox(
          height: 56.0,
          width: 60.0,
          child: Card(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: CustomTextFormField(),
          ),
        ),
      ],
    );
  }
}
