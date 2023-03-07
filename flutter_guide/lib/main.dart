import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp()); //---> this is shorter version

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    List<String> questions = [
      "What\'s your favorite color?",
      "What\'s your favorite animal?",
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("My First App"),  // Text() is class too
      ),
      body: Column(children: <Widget>[
        Text("The questions for you:"),
        ElevatedButton(child: Text("Answer 1"),
          onPressed: null,), // onPressed: null, added to prevent errors
        ElevatedButton(child: Text("Answer 2"),
          onPressed: null,),
        ElevatedButton(child: Text("Answer 3"),
          onPressed: null,),
      ],),
    ),
    );
  }
}