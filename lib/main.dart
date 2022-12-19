import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questions = ["First questions", "Last question"];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello worlds!"),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[0]),
            Text(questions[1]),
            ElevatedButton(
              onPressed: null,
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
