import 'dart:math';
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

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // This widget is the root of your application.
  var RandomNumber1 = 2;
  var RandomNumber2 = 1;
  void ChangeDiceFace() {
    setState(() {
      RandomNumber1 = Random().nextInt(6) + 1;
      RandomNumber2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          ChangeDiceFace();
        },
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Image.asset("image/dice$RandomNumber1.png"),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Image.asset("image/dice$RandomNumber2.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//
// class DicePage extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     var RandomNumber1 = 4;
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//               child: Padding(
//             padding: const EdgeInsets.all(8),
//             child: FlatButton(
//               onPressed: () {
//                 print("Left Button Pressed");
//               },
//               child: Image.asset("image/dice$RandomNumber1.png"),
//             ),
//           )),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(8),
//               child: FlatButton(
//                 onPressed: () {
//                   print("Right Button Pressed");
//                 },
//                 child: Image.asset("image/dice$RandomNumber1.png"),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
