import 'question.dart';

class QuizBrain {
  int _QuestionNum = 0;
  List<Question> _Questionbank = [
    Question(q: "Rajshahi is the capital of Bangladesh", a: false),
    Question(q: "Sundarban is a mangrove forest", a: true),
    Question(q: "Dhaka is less populated city", a: false)
  ];
  String GetQuestionText() {
    return _Questionbank[_QuestionNum].question;
  }

  bool GetAnswer() {
    return _Questionbank[_QuestionNum].answer;
  }

  void NextQuestion() {
    if (_QuestionNum < _Questionbank.length - 1) {
      _QuestionNum++;
    }
  }

  bool IsFinished() {
    if (_QuestionNum < _Questionbank.length - 1) {
      print("false");
      return false;
    } else {
      print("true");
      return true;
    }
  }
}
