import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("Dice"),
          backgroundColor: Colors.blueAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8),
            child: Image.asset("image/dice1.png"),
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Image.asset("image/dice2.png"),
            ),
          ),
        ],
      ),
    );
  }
}
