import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  /**
   * Using final in the modifier will not make sure its value cannot be changed after its assigned from the constructor.
   */
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
