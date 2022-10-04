import 'package:flutter/material.dart';

main() => runApp(new PerguntaApp());

class PerguntaApp extends StatelessWidget {
  Widget build(BuildContext context) {
    final List<String> questions = ['asd asd', 'fgh fgh'];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
      ),
      body: Column(
        children: [
          Text(questions[0]),
        ],
      ),
    ));
  }
}
