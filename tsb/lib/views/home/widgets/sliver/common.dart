import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:tsb/views/home/widgets/custom_text.dart';

class AppScaffold extends StatelessWidget {
  AppScaffold({
    Key? key,
    required this.slivers,
    this.reverse = false,
  }) : super(key: key);

  final List<Widget> slivers;
  final bool reverse;

  @override
  Widget build(BuildContext context) {
    return DefaultStickyHeaderController(
      child: Container(
        child: CustomScrollView(
          slivers: slivers,
          shrinkWrap: true,
          reverse: reverse,
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  Header({
    Key? key,
    this.title,
    this.color = const Color.fromARGB(255, 17, 71, 115),
  }) : super(key: key);
  var month = ['Septemper 2022', 'Augest 2022'];

  final String? title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          height: 48,
          color: color,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.center,
          child: CustomText(
              color: Colors.white,
              text: month[0],
              fontSize: 18,
              fontWeight: FontWeight.w500)),
    );
  }
}
