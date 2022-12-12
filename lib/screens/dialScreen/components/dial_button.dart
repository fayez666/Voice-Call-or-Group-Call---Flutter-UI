import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class DialButton extends StatelessWidget {
  const DialButton({
    Key? key,
    required this.iconSrc,
    required this.text,
  }) : super(key: key);
  final String iconSrc, text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(120),
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: getProportionateScreenWidth(20)),
        child: OutlinedButton(
            onPressed: () {},
            child: Column(
              children: [
                SvgPicture.asset(
                  iconSrc,
                  color: Colors.white,
                  height: 36,
                ),
                const VerticalSpacing(
                  of: 5,
                ),
                Text(
                  text,
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            )),
      ),
    );
  }
}
