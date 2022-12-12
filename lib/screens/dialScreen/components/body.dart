import 'package:calling/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/dial_user.dart';
import '../../../components/rounded_btn.dart';
import '../../../constants.dart';
import 'dial_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SafeArea(
        child: Column(
          children: [
            Text(
              "Anna Williams",
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: Colors.white),
            ),
            const Text(
              "Calling...",
              style: TextStyle(color: Colors.white60),
            ),
            const VerticalSpacing(),
            const DialUserPic(
              image: "assets/images/calling_face.png",
            ),
            const Spacer(),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: const [
                DialButton(
                  iconSrc: 'assets/icons/Icon Mic.svg',
                  text: "Audio",
                ),
                DialButton(
                  iconSrc: 'assets/icons/Icon Volume.svg',
                  text: "Microphone",
                ),
                DialButton(
                  iconSrc: 'assets/icons/Icon Video.svg',
                  text: "Video",
                ),
                DialButton(
                  iconSrc: 'assets/icons/Icon Message.svg',
                  text: "Message",
                ),
                DialButton(
                  iconSrc: 'assets/icons/Icon User.svg',
                  text: "Add contact",
                ),
                DialButton(
                  iconSrc: 'assets/icons/Icon Voicemail.svg',
                  text: "Voice Mail",
                ),
              ],
            ),
            const VerticalSpacing(),
            const RoundedButton(
              iconColor: Colors.white,
              color: kRedColor,
              iconSrc: "assets/icons/call_end.svg",
              size: 64,
            ),
          ],
        ),
      ),
    );
  }
}
