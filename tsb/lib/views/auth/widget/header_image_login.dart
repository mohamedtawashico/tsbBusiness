import 'package:flutter/material.dart';
import 'package:tsb/views/auth/widget/custom_circleavatar.dart';

class HeaderImagesLogin extends StatelessWidget {
  const HeaderImagesLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomCircleAvatar(backgroundImagePath: 'assets/images/fscs.png'),
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: CustomCircleAvatar(
              raduis: 50, backgroundImagePath: 'assets/images/profile.png'),
        ),
        CustomCircleAvatar(backgroundImagePath: "assets/images/gurante.png")
      ],
    );
  }
}
