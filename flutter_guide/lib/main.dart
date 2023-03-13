import 'package:flutter/material.dart';

import './question.dart';

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

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      "What\'s your favorite color?",
      "What\'s your favorite animal?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"), // Text() is class too
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            ElevatedButton(
              child: Text("Answer 1"),
              onPressed: _answerQuestion,
            ),
            // onPressed: null, added to prevent errors
            ElevatedButton(
              child: Text("Answer 2"),
              onPressed: () {
                print("Answer 2 chosen");
              },
            ),
            ElevatedButton(
              child: Text("Answer 3"),
              onPressed: () {
                print("Answer 3 chosen");
              },
            ),
          ],
        ),
      ),
    );
  }
}
