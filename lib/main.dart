import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/result.dart';
import './quiz.dart';

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
      questionIndex = (questionIndex + 1);
    });
  }

  var questions = [
    {
      "question": "Fav Color",
      "answer": "Blue",
      "options": ["Red", "Yellow", "Green", "Blue"]
    },
    {
      "question": "Fav Animal",
      "answer": "Tiger",
      "options": ["Lion", "Tiger", "Mosquito", "Green"]
    }
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello worlds!"),
        ),
        body: questionIndex < questions.length
            ? Quiz(questions, questionIndex, answerQuestion)
            : Result(),
      ),
    );
  }
}
