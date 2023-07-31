import 'package:flutter/material.dart';
import 'package:instagram_project/res/colors.dart';

// ignore: use_key_in_widget_constructors
class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    bool obscureText = true;
    Widget togglepassword() {
      return IconButton(
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          icon: obscureText
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off));
    }

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
                  margin: const EdgeInsets.only(top: 70),
                  child: const Text(
                    "𝓘𝓷𝓼𝓽𝓪𝓰𝓻𝓪𝓶",
                    style: TextStyle(color: WHITE, fontSize: 80),
                  ),
                ),
              ),
              const SizedBox(height: 100),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: 1200,
                child: Form(
                  child: TextFormField(
                      cursorColor: BLACK,
                      cursorHeight: 20,
                      style: const TextStyle(color: BLACK),
                      maxLength: 30,
                      decoration: const InputDecoration(
                        counterText: "",
                        contentPadding: EdgeInsets.all(10),
                        filled: true,
                        fillColor: WHITE,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            borderSide: BorderSide(
                              color: WHITE30,
                              width: 3,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            borderSide: BorderSide(
                              color: BLACK12,
                              width: 3,
                            )),
                        hintText: " Phone Number,Username or Email",
                        hintStyle: TextStyle(
                          color: BLACK45,
                        ),
                      )),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                width: 1200,
                child: Form(
                  child: TextFormField(
                      cursorColor: BLACK,
                      obscureText: obscureText,
                      style: const TextStyle(color: BLACK, fontSize: 16),
                      maxLength: 30,
                      decoration: InputDecoration(
                          counterText: "",
                          suffixIcon: togglepassword(),
                          contentPadding: const EdgeInsets.all(10),
                          filled: true,
                          fillColor: WHITE,
                          counterStyle: const TextStyle(color: BLACK),
                          enabledBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(color: WHITE30, width: 3)),
                          focusedBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(color: BLACK12, width: 3)),
                          hintText: " Password",
                          hintStyle: const TextStyle(
                            color: BLACK45,
                          ))),
                ),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(220, 10, 0, 0),
                  child: InkWell(
                    child: const Text(
                      "Forgetten password ?",
                      style: TextStyle(color: WHITE70, fontSize: 16),
                    ),
                    onTap: () {
                      Navigator.of(context).pushNamed("password");
                    },
                  )),
              const SizedBox(
                height: 30,
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: 1200,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shadowColor: WHITE30,
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        backgroundColor: GREY.withOpacity(0.6)),
                    onPressed: () {
                      Navigator.of(context).pushNamed("login");
                      ;
                    },
                    child: const Text(
                      "Login ",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  )),
              const SizedBox(height: 65),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("OR", style: TextStyle(color: WHITE, fontSize: 20)),
                ],
              ),
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.facebook_outlined,
                    color: WHITE,
                  ),
                  InkWell(
                      onTap: () {},
                      child: const Text(
                        "  Log in with Facebook",
                        style: TextStyle(color: WHITE, fontSize: 20),
                      )),
                ],
              ),
              const SizedBox(
                height: 110,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(color: WHITE70),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed("signin");
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: WHITE),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
