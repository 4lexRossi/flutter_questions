import 'package:demo_project/answer.dart';
import 'package:demo_project/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Questionary extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final void Function() whenAnswer;

  bool get hasSelectedQuestions {
    return selectedQuestion < questions.length;
  }

  Questionary({
    required this.questions,
    required this.selectedQuestion,
    required this.whenAnswer,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> anwswers = hasSelectedQuestions
        ? questions[selectedQuestion]['anwswers'] as List<Map<String, Object>>
        : [];
    return Column(
      children: [
        Question(questions[selectedQuestion]['text'].toString()),
        ...anwswers
            .map(
              (resp) => Answer(
                resp['text'] as String,
                whenAnswer,
              ),
            )
            .toList(),
      ],
    );
  }
}
