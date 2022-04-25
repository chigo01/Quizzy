import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question(
    this.text, {
    Key? key,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left:20),
      //alignment: Alignment.center,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 25.9,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          wordSpacing: 1,
        ),
      ),
    );
  }
}
