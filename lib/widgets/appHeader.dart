// ignore_for_file: file_names

/*import 'dart:io';

import 'package:flutter/material.dart';

import '../constantes/constantes.dart';

class MyHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? search;

  const MyHeader({Key? key, required this.title, this.search})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leadingWidth: 14,
      actions: [
        search ?? const SizedBox.shrink(),
        const SizedBox(
          width: 5,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: 38,
            height: 38,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: mainColor.withOpacity(0.1),
              //  borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 6.5,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: const Icon(
              Icons
                  .notifications_none_outlined, // Replace with your desired icon
              color: mainColor, // Adjust the color as needed
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: ValueListenableBuilder<Box<UserPicture>>(
              valueListenable:
                  Hive.box<UserPicture>('UserPicture').listenable(),
              builder: (context, value, child) {
                //  log("user Picrure updated ${value.values.first.toJson()}");
                if (value.isEmpty) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const Profile()),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 16,
                    ),
                  );
                } else {
                  final userPicture = value.values.first;
                  // log(' this is the user picture $userPicture');
                  return InkWell(
                    onTap: () {
                      /*  Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const Profile()),
                      );*/
                      PersistentNavBarNavigator.pushNewScreenWithRouteSettings(
                        context,
                        settings: const RouteSettings(name: ""),
                        screen: const Profile(),
                        withNavBar: false,
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      );
                    },
                    child: CircleAvatar(
                      radius: 15,
                      backgroundImage: userPicture.path != null
                          ? FileImage(File(userPicture.path!))
                          : null,
                    ),
                  );
                }
              },
            )),
      ],
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 24, color: mainColor, fontWeight: FontWeight.bold),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }
}*/
