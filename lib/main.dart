import 'package:flutter/material.dart';

main() => runApp(QuestionApp());

class QuestionAppState extends State<QuestionApp> {
  var selectQuestion = 0;

  void answer() {
    print('ok');
    setState(() {
      selectQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> questions = ['asd asd', 'fgh fgh'];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter APP'),
      ),
      body: Column(
        children: <Widget>[
          Text(questions[selectQuestion]),
          ElevatedButton(onPressed: answer, child: Text('anwser 1')),
          ElevatedButton(onPressed: answer, child: Text('anwser 2')),
          ElevatedButton(onPressed: answer, child: Text('anwser 3')),
        ],
      ),
    ));
  }
}

class QuestionApp extends StatefulWidget {
  @override
  QuestionAppState createState() {
    return QuestionAppState();
  }
}
