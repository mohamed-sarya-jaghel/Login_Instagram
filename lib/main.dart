import 'package:flutter/material.dart';

import 'package:instagram_project/posts_page.dart';
import 'package:instagram_project/res/colors.dart';

import 'login_page.dart';
import 'notification_page.dart';
import 'password_page.dart';
import 'signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Test(),
        routes: {
          "notification": (context) => const Notif(),
          "homepage": (context) => Test(),
          "password": (context) => Password(),
          "signin": (context) => const Signin(),
          "login": (context) => Login(),
        },
        theme: ThemeData(
            textTheme: const TextTheme(
          bodySmall: TextStyle(color: WHITE, fontSize: 20),
        )));
  }
}
