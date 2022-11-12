import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XyloPhoneApp());
}

class XyloPhoneApp extends StatelessWidget {
  void playSound(int NodeNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$NodeNumber.wav'));
  }

  Expanded KeyBuild(Color KeyColor, int SoundNum) {
    return Expanded(
      child: FlatButton(
        color: KeyColor,
        onPressed: () {
          playSound(SoundNum);
        },
        child: Text(""),
      ),
    );
  }

  const XyloPhoneApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            KeyBuild(Colors.red, 1),
            KeyBuild(Colors.orange, 2),
            KeyBuild(Colors.yellow, 3),
            KeyBuild(Colors.green, 4),
            KeyBuild(Colors.lightBlueAccent, 5),
            KeyBuild(Colors.blue, 6),
            KeyBuild(Colors.purple, 7),
          ],
        )),
      ),
    );
  }
}
