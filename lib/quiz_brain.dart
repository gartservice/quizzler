import 'question.dart';

class QuizBrain{
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: 'First question', a: false),
    Question(q: 'Second question', a: true),
    Question(q: 'Third question', a: false),
  ];
  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }
  bool getCorrectAnswer(){
    print('Number is $_questionNumber');
    return _questionBank[_questionNumber].questionAnswer;
  }
  void nextQuestion(){
    if(_questionNumber<_questionBank.length-1){
      _questionNumber++;
    }
  }
}