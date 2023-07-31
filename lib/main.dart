import 'package:flutter/material.dart';

import 'package:instagram_project/login.dart';

import 'homepage.dart';
import 'notification.dart';
import 'password.dart';
import 'signup.dart';

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
          "notification": (context) =>const Notif(),
          "homepage": (context) => Test(),
          "password": (context) => Password(),
          "signin": (context) => const Signin(),
          "login": (context) => Login(),
        },
        theme: ThemeData(
            textTheme: const TextTheme(
          bodySmall: TextStyle(color: Colors.white, fontSize: 20),
        )));
  }
}
