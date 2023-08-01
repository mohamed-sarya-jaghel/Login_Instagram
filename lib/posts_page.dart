import 'package:flutter/material.dart';
import 'package:instagram_project/res/colors.dart';

List story = [
  {"name": "Add Story", "image": "images/add.png"},
  {"name": "Samera", "image": "images/per1.png"},
  {"name": "Julien", "image": "images/per2.png"},
  {"name": "Mariane", "image": "images/per3.png"}
];
List post = [
  {
    "comment": "273",
    "name": "Jemma Ray",
    "time": "19 hour ago",
    "image": "images/post1.png",
    "imagepost": "images/prfile1.png"
  },
  {
    "comment": "45",
    "name": "Jemma Ray",
    "time": "20 hour ago",
    "image": "images/post2.png",
    "imagepost": "images/profile2.png"
  },
  {
    "comment": "157",
    "name": "Jung Taekwoon",
    "time": "01  day ago",
    "image": "images/post3.png",
    "imagepost": "images/profile3.png"
  },
];

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WHITE,
      body: Column(children: [
        Container(
            width: 428,
            height: 230,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: BLACK),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(backgroundColor: BLACK),
                          onPressed: () {},
                          child: Image.asset(
                            "images/menu.png",
                            fit: BoxFit.fill,
                          )),
                      Container(
                        width: 180,
                        height: 60,
                        decoration: BoxDecoration(
                            color: GREY,
                            borderRadius: BorderRadius.circular(28)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed("notification");
                              },
                              child: Image.asset(
                                "images/notification-bing.png",
                              ),
                            ),
                            Container(
                              width: 92,
                              height: 49,
                              decoration: BoxDecoration(
                                  color: WHITE,
                                  borderRadius: BorderRadius.circular(28)),
                              child: MaterialButton(
                                splashColor: BLACK,
                                onPressed: () {},
                                child: Image.asset(
                                  "images/sms-notification.png",
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 130,
                  child: Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: story.length,
                        itemBuilder: ((context, index) {
                          return Column(
                            children: [
                              Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  width: 90,
                                  height: 80,
                                  decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [ORANGE_LOGIN, YELLOW_LOGIN]),
                                      borderRadius: BorderRadius.circular(45)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Container(
                                        width: 100,
                                        height: 90,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(60),
                                            color: BLACK),
                                        child: Container(
                                          width: 65,
                                          height: 75,
                                          decoration: BoxDecoration(
                                              color: GREY,
                                              borderRadius:
                                                  BorderRadius.circular(60)),
                                          child: MaterialButton(
                                            splashColor: BLACK,
                                            shape: BeveledRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(29)),
                                            padding: const EdgeInsets.all(2),
                                            onPressed: () {},
                                            child: InkWell(
                                              child: Image.asset(
                                                story[index]['image'],
                                                scale: 0.1,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        )),
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                story[index]['name'],
                                style:
                                    const TextStyle(color: WHITE, fontSize: 14),
                              )
                            ],
                          );
                        })),
                  ),
                )
              ],
            )),
        Expanded(
            child: ListView.builder(
                itemCount: post.length,
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(39),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(0.7),
                            child: Stack(
                              children: [
                                Image.asset(
                                  post[index]['image'],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 200, left: 20),
                                      child: Row(
                                        children: [
                                          Container(
                                              width: 59,
                                              height: 59,
                                              decoration: BoxDecoration(
                                                  gradient:
                                                      const LinearGradient(
                                                          begin: Alignment
                                                              .topCenter,
                                                          end: Alignment
                                                              .bottomCenter,
                                                          colors: [
                                                        ORANGE_LOGIN,
                                                        YELLOW_LOGIN
                                                      ]),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          35)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(0.1),
                                                child: Container(
                                                  width: 100,
                                                  height: 90,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              38),
                                                      color: BLACK),
                                                  child: Image.asset(
                                                    post[index]['imagepost'],
                                                    scale: 0.5,
                                                  ),
                                                ),
                                              )),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 20),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, top: 20),
                                                  child: Text(
                                                    post[index]['name'],
                                                    style: const TextStyle(
                                                        color: WHITE,
                                                        fontSize: 18),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, top: 2),
                                                  child: Text(
                                                      post[index]['time'],
                                                      style: TextStyle(
                                                          color: WHITE
                                                              .withOpacity(0.8),
                                                          fontSize: 14)),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 15, top: 80),
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Column(
                                          children: [
                                            MaterialButton(
                                                splashColor:
                                                    WHITE.withOpacity(0.1),
                                                shape: BeveledRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            40)),
                                                onPressed: () {},
                                                child: Image.asset(
                                                    "images/Vector.png")),
                                            const SizedBox(
                                              height: 30,
                                            ),
                                            Column(
                                              children: [
                                                MaterialButton(
                                                  splashColor:
                                                      WHITE.withOpacity(0.1),
                                                  shape: BeveledRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40)),
                                                  onPressed: () {},
                                                  child: Image.asset(
                                                      "images/Vector (1).png"),
                                                ),
                                                Text("273",
                                                    style: TextStyle(
                                                      color: WHITE
                                                          .withOpacity(0.8),
                                                    )),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Container(
                                              width: 59,
                                              height: 80,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(28),
                                                  border: Border.all(
                                                      width: 0.5,
                                                      color: WHITE
                                                          .withOpacity(0.9))),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  MaterialButton(
                                                    splashColor:
                                                        WHITE.withOpacity(0.1),
                                                    shape:
                                                        BeveledRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        40)),
                                                    onPressed: () {},
                                                    child: Image.asset(
                                                        "images/Vector (2).png"),
                                                  ),
                                                  Text("2.4k",
                                                      style: TextStyle(
                                                        color: WHITE
                                                            .withOpacity(0.8),
                                                      )),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )),
                      Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          width: 409,
                          height: 67,
                          child: Row(
                            children: [
                              Image.asset(
                                "images/likepic3.jpg",
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              SizedBox(
                                height: 40,
                                width: 250,
                                child: TextFormField(
                                    cursorColor: BLACK,
                                    decoration: const InputDecoration(
                                        filled: true,
                                        fillColor: WHITE,
                                        counterStyle: TextStyle(color: BLACK),
                                        hintText: "Add a comment ...",
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 15))),
                              ),
                              Text(post[index]['comment'],
                                  style: const TextStyle(
                                      color: BLACK, fontSize: 12)),
                            ],
                          ))
                    ],
                  );
                })))
      ]),
    );
  }
}
