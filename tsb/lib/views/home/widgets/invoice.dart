import 'package:flutter/material.dart';
import 'package:tsb/views/auth/widget/custom_text.dart';

class Invoice extends StatelessWidget {
  const Invoice({
    Key? key,
    required this.sizeWidth,
    required this.sizeHeight,
  }) : super(key: key);

  final double sizeWidth;
  final double sizeHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeWidth,
      height: sizeHeight * 0.08,
      margin: const EdgeInsets.only(top: 0.0),
      padding: const EdgeInsets.only(left: 16, right: 0.0),
      decoration: BoxDecoration(
          color: Colors.white60, borderRadius: BorderRadius.circular(0.0)),
      child: ListTile(
        leading: CircleAvatar(
          maxRadius: 18,
          backgroundColor: Colors.grey,
          child: CustomText(
            text: 'JL',
            fontSize: 18,
          ),
        ),
        title: CustomText(
          text: 'jen dep cd fab gack',
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        subtitle: CustomText(
          text: '02 september',
          fontSize: 15,
        ),
        trailing: Column(
          children: [
            CustomText(
              text: '-\$96.23',
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              height: 5,
            ),
            CustomText(
              text: '\$28.26',
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }
}
// Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//             children: [
//               const CircleAvatar(
//                 maxRadius: 18,
//                 backgroundColor: Colors.grey,
//                 child: Text(
//                   'JL',
//                   style: TextStyle(color: Colors.black, fontSize: 18),
//                 ),
//               ),
//               const SizedBox(
//                 width: 16,
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: const [
//                   Text(
//                     'jen dep cd fab gack',
//                     style: TextStyle(
//                         color: Color.fromARGB(255, 31, 111, 175),
//                         fontSize: 20,
//                         fontWeight: FontWeight.w500),
//                   ),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   Text(
//                     '02 september',
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 15,
//                         fontWeight: FontWeight.w400),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 width: 150,
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: const [
//                   Text(
//                     '-\$96.23',
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w500),
//                   ),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   Text(
//                     '\$28.26',
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 15,
//                         fontWeight: FontWeight.w400),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           Divider(
//             endIndent: 16,
//           )
//         ],
//       ),