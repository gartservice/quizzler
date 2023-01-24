import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: 'First question', a: false),
    Question(q: 'Second question', a: true),
    Question(q: 'Third question', a: false),
    Question(q: '4 question', a: false),
    Question(q: '5 question', a: false),
    Question(q: '6 question', a: false),
  ];

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    print('Number is $_questionNumber');
    return _questionBank[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }

  }

  bool isFinished() {
    print('isFinish $_questionNumber');
    int len = _questionBank.length - 1;
    print('_questionBank.length $len');
    if (_questionNumber == (_questionBank.length - 1)) {
      reset();
      return true;
    } else {
      return false;
    }
    // return _questionNumber == (_questionBank.length - 1)?true:false;
  }
  void reset(){
    _questionNumber = 0;
    print('reset');
  }
}
