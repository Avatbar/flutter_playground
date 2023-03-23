import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp()); //---> this is shorter version

class MyApp extends StatefulWidget {
  // so we can reload when states changes in app
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // states to by restarted when its called from MyApp
  int _questionIndex = 0;

  final questions = const [
    {
      "questionText": "What\'s your favorite color?",
      "answers": ["Black", "Red", "Green", "White"],
    },
    {
      "questionText": "What\'s your favorite animal?",
      "answers": ["Rabbit", "Snake", "Zebra", "Lion"],
    },
    {
      "questionText": "Who\'s your favorite max?",
      "answers": ["Max", "Max", "Max"],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"), // Text() is class too
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]["questionText"]),
            ...(questions[_questionIndex]["answers"] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
