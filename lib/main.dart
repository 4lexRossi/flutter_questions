import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

main() => runApp(const QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  int _selectedQuestion = 0;

  final _questions = const [
    {
      'text': 'Cor',
      'anwswers': ['Preto', 'vermelho', 'azul']
    },
    {
      'text': 'animal',
      'anwswers': ['cachorro', 'gato', 'peixe']
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
    List<String> anwswers = hasSelectedQuestions
        ? _questions[_selectedQuestion].cast()['anwswers']
        : [];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Flutter APP'),
      ),
      body: hasSelectedQuestions
          ? Column(
              children: <Widget>[
                Question(_questions[_selectedQuestion]['text'].toString()),
                ...anwswers.map((t) => Answer(t, _answer)).toList(),
              ],
            )
          : const Center(
              child: Text(
                'OK!',
                style: TextStyle(fontSize: 28),
              ),
            ),
    ));
  }
}

class QuestionApp extends StatefulWidget {
  const QuestionApp({super.key});

  @override
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
