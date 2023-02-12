import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  Answer(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
