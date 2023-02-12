import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;

  const Question(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10.0, top: 10.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
