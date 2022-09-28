import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tsb/views/home/widgets/custom_listtile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
    required this.sizeWidth,
    required this.lastlogin,
  }) : super(key: key);

  final double sizeWidth;
  final String lastlogin;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueGrey[100],
      width: sizeWidth,
      child: ListView(
        padding: const EdgeInsets.only(
          top: 40,
          right: 16,
          left: 16,
        ),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                padding: const EdgeInsets.all(0.0),
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back_ios_outlined),
              ),
              const Text(
                'Profile and Settings',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Logout',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 17, 71, 115)),
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 24, bottom: 24),
            child: Row(
              children: [
                Stack(alignment: Alignment.bottomRight, children: [
                  const CircleAvatar(
                    maxRadius: 35,
                    backgroundImage: AssetImage(
                      'assets/images/profile.png',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('edit profile');
                    },
                    child: CircleAvatar(
                        maxRadius: 13,
                        child: Icon(
                          Icons.edit,
                          size: 16,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.blue[900]),
                  )
                ]),
                const SizedBox(
                  width: 24,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Bashat lazoun',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'last login: $lastlogin',
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
          ),
          const Text(
            'My Profile',
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14), color: Colors.white),
            child: CustomListTile(
              text: 'Pendings authentications',
              iconleading: const Icon(
                Icons.done,
                color: Colors.blue,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            'Help & Support',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14), color: Colors.white),
            child: Column(
              children: [
                CustomListTile(
                  text: 'FAQS',
                  iconleading: const Icon(
                    Icons.question_mark,
                    color: Colors.blue,
                  ),
                ),
                const Divider(
                  thickness: 1.5,
                  indent: 10,
                  height: 2,
                ),
                CustomListTile(
                  text: 'user Guide',
                  iconleading: const Icon(
                    Icons.auto_stories_rounded,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            'Settings',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14), color: Colors.white),
            child: CustomListTile(
              text: 'Device Settings',
              iconleading: const Icon(
                Icons.mobile_friendly,
                color: Colors.blue,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            'Important Information',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14), color: Colors.white),
            child: Column(
              children: [
                CustomListTile(
                  text: 'Internet banking t&cs',
                  iconleading: const Icon(
                    Icons.comment_bank_outlined,
                    color: Colors.blue,
                  ),
                ),
                const Divider(
                  thickness: 1.5,
                  indent: 10,
                  height: 2,
                ),
                CustomListTile(
                  text: 'privacy Policy',
                  iconleading: const Icon(
                    Icons.privacy_tip_outlined,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
