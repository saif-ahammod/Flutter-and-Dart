import 'dart:ffi';
import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  runApp(Quizzler());
}

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> ScoreKeeper = [];
  // List<String> Questions = [
  //   "Rajshahi is the capital of Bangladesh",
  //   "Sundarban is a mangrove forest",
  //   "Dhaka is less populated city",
  //   "Thank you for participate"
  // ];
  // List<bool> answer = [false, true, false];

  List<Question> Questionbank = [
    Question(q: "Rajshahi is the capital of Bangladesh", a: false),
    Question(q: "Sundarban is a mangrove forest", a: true),
    Question(q: "Dhaka is less populated city", a: false)
  ];
  int QuestionNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                Questionbank[QuestionNumber].question,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                if (Questionbank[QuestionNumber].answer == true) {
                  print("Answer is correct");
                } else {
                  print("Answer is wrong");
                }
                setState(() {
                  if (QuestionNumber < Questionbank.length - 1) {
                    QuestionNumber++;
                  }
                });

                print(QuestionNumber);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                if (Questionbank[QuestionNumber].answer == false) {
                  print("Answer is correct");
                } else {
                  print("Answer is wrong");
                }
                setState(() {
                  if (QuestionNumber < Questionbank.length - 1) {
                    QuestionNumber++;
                  }
                });

                print(QuestionNumber);
                //The user picked false.
              },
            ),
          ),
        ),
        Row(
          children: ScoreKeeper,
        )
      ],
    );
  }
}
