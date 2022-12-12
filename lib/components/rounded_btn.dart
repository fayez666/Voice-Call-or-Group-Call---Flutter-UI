import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    this.size = 64,
    required this.iconSrc,
    required this.color,
    required this.iconColor,
  }) : super(key: key);

  final double size;
  final String iconSrc;
  final Color color, iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      height: getProportionateScreenWidth(size),
      width: getProportionateScreenWidth(size),
      child: IconButton(
        color: iconColor,
        icon: SvgPicture.asset(iconSrc),
        onPressed: () {},
      ),
    );
  }
}
