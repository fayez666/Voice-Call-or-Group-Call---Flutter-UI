import 'package:calling/constants.dart';
import 'package:calling/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/rounded_btn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          "assets/images/full_image.png",
          fit: BoxFit.cover,
        ),
        DecoratedBox(
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.3))),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jemmy \nWilliams",
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      ?.copyWith(color: Colors.white),
                ),
                const VerticalSpacing(
                  of: 10,
                ),
                Text(
                  "INcomming 00:01".toUpperCase(),
                  style: const TextStyle(color: Colors.white60),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    RoundedButton(
                      color: Colors.white,
                      iconColor: Colors.white,
                      iconSrc: "assets/icons/Icon Mic.svg",
                      size: 64,
                    ),
                    RoundedButton(
                      iconColor: Colors.white,
                      color: kRedColor,
                      iconSrc: "assets/icons/call_end.svg",
                      size: 64,
                    ),
                    RoundedButton(
                      iconColor: Colors.white,
                      color: Colors.white,
                      iconSrc: "assets/icons/Icon Volume.svg",
                      size: 64,
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
