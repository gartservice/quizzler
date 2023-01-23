import 'package:flutter/material.dart';
import 'quiz_brain.dart';

void main() => runApp(Quizzler());

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
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  QuizBrain quizBrain = QuizBrain();
  List<Icon> scoreKeeper = [];
  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.questionBank[questionNumber].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                ),
                onPressed: () {
                  bool correctAnswer = quizBrain.questionBank[questionNumber].questionAnswer;
                  if (correctAnswer==true){
                    print('user go it right');
                  }else{
                    print('user got it wrong');
                  }

                  setState(() {
                    questionNumber++;
                  });
                },
                child: Text(
                  'True',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                )),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red),
                ),
                onPressed: () {
                  bool correctAnswer = quizBrain.questionBank[questionNumber].questionAnswer;
                  if (correctAnswer==false){
                    print('user go it right');
                  }else{
                    print('user got it wrong');
                  }
                  setState(() {
                    questionNumber++;
                  });
                },
                child: Text(
                  'False',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                )),
          ),
        ),
      ],
    );
  }
}
