import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:get/get.dart';
import 'package:tsb/views/home/widgets/sliver/common.dart';
import 'package:tsb/views/home/widgets/invoice.dart';

import '../../../auth/widget/custom_elevatedbutton.dart';

class Lists extends StatelessWidget {
  const Lists({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      slivers: const [
        _StickyHeaderList(index: 0),
        _StickyHeaderList(index: 1),
        _StickyHeaderList(index: 2),
        _StickyHeaderList(index: 3),
      ],
    );
  }
}

class _StickyHeaderList extends StatelessWidget {
  const _StickyHeaderList({
    Key? key,
    this.index,
  }) : super(key: key);

  final int? index;

  @override
  Widget build(BuildContext context) {
    var sizeWidth = Get.width;
    var sizeHeight = Get.height;
    return SliverStickyHeader(
      header: Header(),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, i) => Invoice(sizeWidth: sizeWidth, sizeHeight: sizeHeight),
          childCount: 6,
        ),
      ),
    );
  }
}

class BodyPyment extends StatelessWidget {
  const BodyPyment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.0, right: 16, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '\$50.50',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
          ),
          const Text('available balance: \$50.50',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
          const SizedBox(
            height: 24,
          ),
          CustomElevatedButton(
            onPressed: (() {}),
            text: 'Move Money',
          )
        ],
      ),
    );
  }
}
