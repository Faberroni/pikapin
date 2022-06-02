
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled/constants/constants.dart';
import 'package:untitled/constants/route.dart';
import 'package:untitled/firebase_options.dart';
import 'package:untitled/main_screen.dart';
import 'package:untitled/login_page.dart';
import 'package:untitled/register_page.dart';




void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      routes: {
        loginRoute: (context) => const LoginPage(),
        registerRoute:(context) =>  const RegisterView(),
        homeRoute:(context) =>  HomeScreen(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Gordita',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        )
      ),
      home: const HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              final user = FirebaseAuth.instance.currentUser;
              if (user != null) {
                return  HomeScreen();
              } else {
                return const RegisterView();
              }
            default:
              return const Text('Loading...');
          }
        },
      ),
    );
  }
}