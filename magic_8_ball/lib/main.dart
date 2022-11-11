import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("Magic 8 Ball"),
        ),
        body: Magic8Ball(),
      ),
    ),
  );
}

class Magic8Ball extends StatefulWidget {
  const Magic8Ball({Key? key}) : super(key: key);

  @override
  State<Magic8Ball> createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  @override
  var BallNum = 1;
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            BallNum = Random().nextInt(4) + 1;
          });
        },
        child: Expanded(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Image.asset("Image/ball$BallNum.png"),
          ),
        ),
      ),
    );
  }
}
