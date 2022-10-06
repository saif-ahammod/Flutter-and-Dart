import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Container(
              child: Text("Hello"),
              //margin: EdgeInsets.all(50.0),
              margin: EdgeInsets.symmetric(vertical: 100.0, horizontal: 100.0)),
        ),
      ),
    );
  }
}
