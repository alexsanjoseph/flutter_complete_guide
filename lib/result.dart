import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetHandler;

  Result(this.score, this.resetHandler);

  String get resultPhrase {
    return "Final Score is: " + score.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(onPressed: resetHandler, child: Text("Reset Quiz!")),
        ],
      ),
    );
  }
}
