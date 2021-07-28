import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  /**
   * Using final in the modifier will not make sure its value cannot be changed after its assigned from the constructor.
   */
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Text(questionText,
        style: TextStyle(fontSize: 18), textAlign: TextAlign.center);
  }
}
/**
 * Using this propert will not  align the text in the center.
 */