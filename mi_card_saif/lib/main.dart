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
            height: 100,
            width: 200,
            color: Colors.red,
            //margin: EdgeInsets.all(50.0),
            //margin: EdgeInsets.symmetric(vertical: 100.0, horizontal: 100.0)
            //margin: EdgeInsets.only(left: 50),
            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
            padding: EdgeInsets.all(20),
          ),
        ),
      ),
    );
  }
}
