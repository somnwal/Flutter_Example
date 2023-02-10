import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var index = 0;

  void answerQuestion() {
    setState(() {
      index = index + 1;
    });

    print(index);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['ab', 'b', 'c'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Test")),
        body: Column(children: [
          Question(
            questions[index],
          ),
          Answer(answerQuestion),
          Answer(answerQuestion),
          Answer(answerQuestion),
        ]),
      ),
    );
  }
}
