import 'package:flutter/material.dart';

import '../../../components/dial_user.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class UserCallingCard extends StatelessWidget {
  const UserCallingCard({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  final String image, name;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgoundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DialUserPic(size: 112, image: image),
          const VerticalSpacing(
            of: 10,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
          const VerticalSpacing(of: 5),
          const Text(
            "Calling...",
            style: TextStyle(color: Colors.white60),
          )
        ],
      ),
    );
  }
}
