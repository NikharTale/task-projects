import 'package:biz_card_app/quiz_app/questions_model_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int _currentQuestionIndex = 0;
  List questionList = [
    Question.name(
        "In India, do people traditionally eat their food with the right hand",
        true),
    Question.name(
        "Holi is the major festival in India signifies the victory of light over darkness",
        false),
    Question.name(" signifies the victory of light over darkness", true)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Quiz Game",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70),
        ),
        //   backgroundColor: Colors.grey,
      ),
      body: SizedBox(
          width: double.infinity,
          // color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  "images/flag.jpg",
                  width: 250,
                  height: 180,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(14.4),
                    border: Border.all(
                        color: Colors.white, style: BorderStyle.solid)),
                height: 120.0,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      questionList[_currentQuestionIndex].questionText,
                      // style: const TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        _previousQuestion();
                      },
                      child: const Text("<-")),
                  ElevatedButton(
                      onPressed: () {
                        _checkAnswer(true);
                      },
                      child: const Text("YES")),
                  ElevatedButton(
                      onPressed: () {
                        _checkAnswer(false);
                      },
                      child: const Text("NO")),
                  ElevatedButton(
                      onPressed: () {
                        _nextQuestion();
                      },
                      child: const Text("->"))
                ],
              ),
              const Spacer()
            ],
          )),
    );
  }

  void _checkAnswer(bool userChoice) {
    if (userChoice == questionList[_currentQuestionIndex].isCorrect) {
      const snackBar = SnackBar(
          backgroundColor: Colors.green,
          duration: Duration(seconds: 3),
          content: Text("Correct!"));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      _nextQuestion();
    } else {
      const snackBar = SnackBar(
          duration: Duration(seconds: 5),
          backgroundColor: Colors.red,
          content: Text("Incorrect!"));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      _nextQuestion();
    }
  }

  void _nextQuestion() {
    setState(() {
      _currentQuestionIndex = (_currentQuestionIndex + 1) % questionList.length;
    });
  }

  void _previousQuestion() {
    setState(() {
      _currentQuestionIndex = (_currentQuestionIndex - 1) % questionList.length;
    });
  }
}
