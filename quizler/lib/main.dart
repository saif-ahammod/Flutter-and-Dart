import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:quizler/Quiz_Brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'Quiz_Brain.dart';

QuizBrain quizBrain = QuizBrain();
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
  // Alert with single button.
  _onAlertButtonPressed(context) {
    Alert(
      context: context,
      type: AlertType.success,
      title: "Congratulation",
      desc: "You have successfully completed the quiz task",
      buttons: [
        DialogButton(
            child: Text(
              "Continue",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () {
              setState(() {
                ScoreKeeper.clear();
                quizBrain.reset();
              });
              _onCustomAnimationAlertPressed(context);
              width:
              120;
            })
      ],
    ).show();
  }

  //Custom animation alert
  _onCustomAnimationAlertPressed(context) {
    Alert(
      context: context,
      title: "Gratjob",
      desc: "Wanna try again?",
      alertAnimation: fadeAlertAnimation,
    ).show();
  }

  Widget fadeAlertAnimation(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Align(
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }
  // List<String> Questions = [
  //   "Rajshahi is the capital of Bangladesh",
  //   "Sundarban is a mangrove forest",
  //   "Dhaka is less populated city",
  //   "Thank you for participate"
  // ];
  // List<bool> answer = [false, true, false];

  int QuestionNumber = 0;
  void CheckAnswer(bool UserAnswer) {
    setState(() {
      if (quizBrain.GetAnswer() == UserAnswer) {
        ScoreKeeper.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else {
        ScoreKeeper.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
      }
      if (quizBrain.IsFinished()) {
        _onAlertButtonPressed(context);
      } else {
        quizBrain.NextQuestion();
      }
    });
  }

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
                quizBrain.GetQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blueAccent,
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
                CheckAnswer(true);
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
                CheckAnswer(false);

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
