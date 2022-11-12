import 'package:flutter/material.dart';

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
          child: Container(),
        ),
      ),
    );
  }
}
