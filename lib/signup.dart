import 'package:flutter/material.dart';
import 'package:instagram_project/res/colors.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
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
              child: Column(children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: const Text(
                      "𝓘𝓷𝓼𝓽𝓪𝓰𝓻𝓪𝓶",
                      style: TextStyle(color: WHITE, fontSize: 60),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: TextFormField(
                      maxLength: 30,
                      style: Theme.of(context).textTheme.bodySmall,
                      decoration: const InputDecoration(
                          hintText: " Mobile number or Email",
                          hintStyle: TextStyle(color: WHITE70))),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: TextFormField(
                      maxLength: 30,
                      style: Theme.of(context).textTheme.bodySmall,
                      decoration: const InputDecoration(
                          hintText: " Full Name",
                          hintStyle: TextStyle(color: WHITE70))),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: TextFormField(
                      maxLength: 30,
                      style: Theme.of(context).textTheme.bodySmall,
                      decoration: const InputDecoration(
                          hintText: " Username",
                          hintStyle: TextStyle(color: WHITE70))),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: TextFormField(
                      style: Theme.of(context).textTheme.bodySmall,
                      maxLength: 30,
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: " Password",
                          hintStyle: TextStyle(color: WHITE70))),
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromHeight(15),
                        backgroundColor: GREY),
                    onPressed: () {},
                    child: const Text(
                      "Send login link",
                      style: TextStyle(
                        color: WHITE,
                        fontSize: 20,
                      ),
                    )),
                const SizedBox(
                  height: 160,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(double.maxFinite, 30),
                        backgroundColor: WHITE30.withOpacity(0.1)),
                    onPressed: () {
                      Navigator.of(context).pop("homepage");
                    },
                    child: const Text(
                      "back to login",
                      style: TextStyle(fontSize: 25, color: WHITE70),
                    ))
              ]),
            )));
  }
}
