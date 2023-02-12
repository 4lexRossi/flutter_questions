import 'package:demo_project/questionary.dart';
import 'package:demo_project/result.dart';
import 'package:flutter/material.dart';

main() => runApp(const QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  int _selectedQuestion = 0;

  final _questions = const [
    {
      'text': 'Cor',
      'anwswers': [
        {'text': 'Preto', 'score': 10},
        {'text': 'vermelho', 'score': 7},
        {'text': 'azul', 'score': 5}
      ]
    },
    {
      'text': 'animal',
      'anwswers': [
        {'text': 'cachorro', 'score': 9},
        {'text': 'gato', 'score': 6},
        {'text': 'peixe', 'score': 3}
      ]
    },
  ];

  void _answer() {
    if (hasSelectedQuestions) {
      setState(() {
        _selectedQuestion++;
      });
    }
  }

  bool get hasSelectedQuestions {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter APP'),
        ),
        body: hasSelectedQuestions
            ? Questionary(
                whenAnswer: _answer,
                questions: _questions,
                selectedQuestion: _selectedQuestion,
              )
            : const Result(),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  const QuestionApp({super.key});

  @override
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
