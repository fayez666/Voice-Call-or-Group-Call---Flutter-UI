import 'package:calling/size_config.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class AudioCallWithImage extends StatelessWidget {
  const AudioCallWithImage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
