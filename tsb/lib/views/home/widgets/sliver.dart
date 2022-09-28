import 'package:flutter/material.dart';

import 'sliver/list.dart';

class Home extends StatelessWidget {
  Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView(
        children: <Widget>[Lists()],
      ),
    );
  }
}
