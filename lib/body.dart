import 'package:flutter/material.dart';
import 'package:untitled/categories.dart';
import 'package:untitled/new_arrival_product.dart';
import 'package:untitled/popular_product.dart';
import 'package:untitled/search_form.dart';
import 'package:untitled/profile/profile_menu.dart';
import 'package:untitled/profile/profile_pic.dart';
import 'package:untitled/constants/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Text(
              "PIKAPIN",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            const Text(
              "Aman sampai tujuan",
              style: TextStyle(fontSize: 18),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            const Categories(),
            const NewArrivalProducts(),
            const PopularProducts(),
          ProfilePic(),
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
