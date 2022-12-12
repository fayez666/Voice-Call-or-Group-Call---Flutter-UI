import 'package:calling/screens/audioCallWithImage/audio_call_with_image_screen.dart';
import 'package:calling/screens/dialScreen/dial_screen.dart';
import 'package:calling/screens/groupCall/group_call.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Call App',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const GroupCallScreen(),
    );
  }
}
