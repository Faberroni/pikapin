import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/constants/constants.dart';

import 'package:untitled/categories.dart';
import 'package:untitled/constants/route.dart';
import 'package:untitled/new_arrival_product.dart';
import 'package:untitled/popular_product.dart';
import 'package:untitled/search_form.dart';
import 'package:untitled/custom_bottom_nav_bar.dart';
import 'package:untitled/enums.dart';
import 'package:untitled/body.dart';


class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () async {
            await FirebaseAuth.instance.signOut();
            Navigator.of(context).pushNamedAndRemoveUntil(
              loginRoute,
              (route) => false,
            );
          },
          icon: const Icon(Icons.logout),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(
              "assets/location.svg",
              height: 30,
              width: 30,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset("assets/notification.svg"),
            onPressed: () {},
          ),
        ],
      ),
      
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
