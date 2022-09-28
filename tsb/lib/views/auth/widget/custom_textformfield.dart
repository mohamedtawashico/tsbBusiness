import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      // autovalidateMode: AutovalidateMode.onUserInteraction,
      focusNode: FocusNode(
        descendantsAreTraversable: true,
        canRequestFocus: true,
      ),
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      maxLength: 1,
      onChanged: ((value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      }),
      inputFormatters: [
        LengthLimitingTextInputFormatter(1),
        FilteringTextInputFormatter.digitsOnly
      ],
      decoration:
          const InputDecoration(border: InputBorder.none, counterText: ''),
    );
  }
}
