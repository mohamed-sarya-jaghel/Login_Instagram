import 'package:flutter/material.dart';
import 'package:instagram_project/res/colors.dart';

List likes = [
  {
    "image1": "images/likepic1.png",
    "titl": "Louisa liked your post. 1m",
  },
  {
    "image1": "images/likepic2.png",
    "titl": "Lara Commented on  your story. 30m",
  },
  {
    "image1": "images/likepic.png",
    "titl": "Lara liked your comment :\n see you tomorow. 3h",
  },
  {
    "image1": "images/likepic4.png",
    "titl": "Sami and omar liked your story. 6h",
  },
  {
    "image1": "images/likepic5.png",
    "titl": "Amera started following you. 5h",
  },
  {
    "image1": "images/likepic6.png",
    "titl": "Samer,from youur contacts\n is on instagramas samer syria. 12h",
  },
  {
    "image1": "images/likepic8.png",
    "titl": "Dr.Suzan ,الجزيرة الرياضية ,and others\n shared 28 photos. 6d",
  },
  {
    "image1": "images/likepic7.png",
    "titl": "Mira requsted to follow you. 6d",
  },
];

class Notif extends StatefulWidget {
  const Notif({super.key});

  @override
  State<Notif> createState() => _NotifState();
}

class _NotifState extends State<Notif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BLACK,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          "Notifications",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: BLACK,
      ),
      body: Column(
        children: [
          Column(children: [
            MaterialButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(39),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(children: [
                              Image.asset(
                                "images/profile2.png",
                              ),
                            ]))),
                    const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Follow requests",
                              style: TextStyle(color: WHITE, fontSize: 14)),
                          Text("Approve or ignore requests  ",
                              style: TextStyle(color: WHITE70, fontSize: 16)),
                        ])
                  ],
                )),
          ]),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 250),
            child: Text("This Week",
                style: TextStyle(
                    color: WHITE, fontSize: 18, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: likes.length,
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, bottom: 20),
                              child: Image.asset(
                                likes[index]['image1'],
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              likes[index]['titl'],
                              style:
                                  const TextStyle(color: WHITE, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                })),
          ),
        ],
      ),
    );
  }
}
