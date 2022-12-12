import 'package:flutter/material.dart';

import 'user_calling_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.zero,
        itemCount: demoData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.53,
          crossAxisCount: 2,
          // mainAxisSpacing: 20,
          // crossAxisSpacing: 20,
        ),
        itemBuilder: ((context, index) => demoData[index]["isCalling"]
            ? UserCallingCard(
                image: demoData[index]["image"], name: demoData[index]["name"])
            : Image.asset(
                demoData[index]["image"],
                fit: BoxFit.cover,
              )));
  }
}

List<Map<String, dynamic>> demoData = [
  {
    "isCalling": false,
    "name": "User 1",
    "image": "assets/images/goup_call_1.png",
  },
  {
    "isCalling": true,
    "name": "Steve jon",
    "image": "assets/images/group_call_face_small.png",
  },
  {
    "isCalling": false,
    "name": "User 1",
    "image": "assets/images/group_call_face_2.png",
  },
  {
    "isCalling": false,
    "name": "User 1",
    "image": "assets/images/group_call_face_3.png",
  },
];
