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

  const XyloPhoneApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            FlatButton(
              color: Colors.red,
              onPressed: () {
                //   final player = AudioPlayer();
                //   player.play(AssetSource('assets/note1.wav'));
                playSound(1);
              },
              child: Text(""),
            ),
            FlatButton(
              color: Colors.orange,
              onPressed: () {
                //   final player = AudioPlayer();
                //   player.play(AssetSource('assets/note1.wav'));
                playSound(2);
              },
              child: Text(""),
            ),
            FlatButton(
              color: Colors.yellow,
              onPressed: () {
                //   final player = AudioPlayer();
                //   player.play(AssetSource('assets/note1.wav'));
                playSound(3);
              },
              child: Text(""),
            ),
            FlatButton(
              color: Colors.green,
              onPressed: () {
                //   final player = AudioPlayer();
                //   player.play(AssetSource('assets/note1.wav'));
                playSound(4);
              },
              child: Text(""),
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                //   final player = AudioPlayer();
                //   player.play(AssetSource('assets/note1.wav'));
                playSound(5);
              },
              child: Text(""),
            ),
            FlatButton(
              color: Colors.blueAccent,
              onPressed: () {
                //   final player = AudioPlayer();
                //   player.play(AssetSource('assets/note1.wav'));
                playSound(6);
              },
              child: Text(""),
            ),
            FlatButton(
              color: Colors.purple,
              onPressed: () {
                //   final player = AudioPlayer();
                //   player.play(AssetSource('assets/note1.wav'));
                playSound(7);
              },
              child: Text(""),
            ),
          ],
        )),
      ),
    );
  }
}
