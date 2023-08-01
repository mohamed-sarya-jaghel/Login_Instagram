import 'package:flutter/material.dart';
import 'package:instagram_project/res/colors.dart';

class Password extends StatefulWidget {
  Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              PURPLE2,
              ORANGE,
              PURPLE3,
              YELLOW1,
              YELLOW2,
              RED,
              BLUE,
            ])),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                      child: Container(
                    margin: const EdgeInsets.only(top: 39),
                    child: const Icon(
                      Icons.lock,
                      size: 159,
                      color: BLACK87,
                    ),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Trouble logging in?",
                    style: TextStyle(color: WHITE, fontSize: 30),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                      "  Enter your email, phone, or username\n  and we'll send you a link to get back into\n  your account.",
                      style: TextStyle(color: WHITE70, fontSize: 20)),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Form(
                      child: TextFormField(
                        style: TextStyle(fontSize: 20),
                        maxLength: 40,
                        decoration: const InputDecoration(
                          hintText: "Email, Phone, or Username",
                          hintStyle: TextStyle(color: WHITE70, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size.fromHeight(35),
                          backgroundColor: GREY),
                      onPressed: () {},
                      child: const Text(
                        "Send login link",
                        style: TextStyle(
                          color: WHITE,
                          fontSize: 20,
                        ),
                      )),
                  const SizedBox(height: 55),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Divider(),
                      Text("OR",
                          style: TextStyle(color: WHITE70, fontSize: 30)),
                    ],
                  ),
                  const SizedBox(height: 50),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Create new account",
                      style: TextStyle(color: WHITE, fontSize: 20),
                    ),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(double.maxFinite, 20),
                          backgroundColor: WHITE30.withOpacity(0.1)),
                      onPressed: () {
                        Navigator.of(context).pop("homepage");
                      },
                      child: const Text(
                        "back to login",
                        style: TextStyle(fontSize: 25, color: WHITE70),
                      ))
                ],
              ),
            )));
  }
}
