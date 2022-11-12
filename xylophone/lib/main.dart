import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XyloPhoneApp());
}

class XyloPhoneApp extends StatelessWidget {
  const XyloPhoneApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: FlatButton(
            onPressed: () {
              //   final player = AudioPlayer();
              //   player.play(AssetSource('assets/note1.wav'));
              final player = AudioPlayer();
              player.play(AssetSource('note1.wav'));
            },
            child: Text("Click ME"),
          ),
        ),
      ),
    );
  }
}
