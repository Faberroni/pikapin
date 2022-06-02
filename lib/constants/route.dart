import 'dart:js';

import 'package:untitled/main_screen.dart';
import 'package:untitled/profile/profile_screen.dart';

const loginRoute = '/login/';
const registerRoute = '/register/';
const homeRoute = '/home/';
const profileRoute = '/profile';

final Map routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
};
