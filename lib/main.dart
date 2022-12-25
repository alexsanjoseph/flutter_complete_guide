import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State {
  var questionIndex = 0;
  void answerQuestion() {
    print("Chosen!!");
    setState(() {
      questionIndex = (questionIndex + 1) % 2;
    });
  }

  var questions = ["First questions", "Last question"];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello worlds!"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[questionIndex]),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text("Answer 2"),
            ),
          ],
        ),
      ),
    );
  }
}
