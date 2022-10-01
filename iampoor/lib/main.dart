import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(
          child: const Text('I am Poor'),
        ),
      ),
      body: Center(
        child: Image(image: AssetImage("images/coal.png")),
      ),
    ),
  ));
}
