import 'package:flutter/material.dart';

import '../size_config.dart';

class DialUserPic extends StatelessWidget {
  const DialUserPic({
    Key? key,
    this.size = 192,
    required this.image,
  }) : super(key: key);

  final double size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30 / 192 * size),
      height: getProportionateScreenHeight(size),
      width: getProportionateScreenHeight(size),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(colors: [
            Colors.white.withOpacity(0.02),
            Colors.white.withOpacity(0.05)
          ], stops: const [
            0.5,
            1
          ])),
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
