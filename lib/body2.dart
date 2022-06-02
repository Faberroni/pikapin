// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:untitled/profile/profile_menu.dart';
import 'package:untitled/profile/profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/user.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/question.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/logout.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
