import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import "./Quiz.dart";
import "./Result.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _index = 0;
  var _questions = [
    {
      'question': 'What\'s your dreaming job ?',
      'answers': [
        {'text': 'Civil Engineer', 'flag': false},
        {'text': 'Doctor', 'flag': false},
        {'text': 'Programmer', 'flag': true},
        {'text': 'Lawyer', 'flag': false}
      ]
    },
    {
      'question': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'red', 'flag': false},
        {'text': 'blue', 'flag': true},
        {'text': 'yellow', 'flag': false},
        {'text': 'pink', 'flag': false}
      ]
    },
    {
      'question': 'What\'s your favorite football team ?',
      'answers': [
        {'text': 'Liverpool', 'flag': true},
        {'text': 'Real Madrid', 'flag': false},
        {'text': 'Barcelona', 'flag': false},
        {'text': 'Bayern Munich', 'flag': false}
      ]
    },
    {
      'question': 'What\'s your best quality ? ',
      'answers': [
        {'text': 'Honesty', 'flag': false},
        {'text': 'Braveness', 'flag': false},
        {'text': 'Intelligence', 'flag': true},
        {'text': 'Kindness', 'flag': false}
      ]
    },
  ];

  int _score = 0;

  void _nextQuestion(bool answer) {
    if (answer) _score++;
    setState(() {
      _index++;
    });
  }

  void restartQuiz() {
    setState(() {
      _index=0;
      _score=0;
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.redAccent,
              title: Text("Quizes"),
              //backgroundColor: Colors.cyanAccent,
            ),
            body: _index < _questions.length
                ? Quiz(_nextQuestion, _questions, _index)
                : Result(_score,restartQuiz)));
  }
}
