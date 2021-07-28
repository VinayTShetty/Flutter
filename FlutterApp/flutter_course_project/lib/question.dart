import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  /**
   * Using final in the modifier will not make sure its value cannot be changed after its assigned from the constructor.
   */
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child:
      Text(questionText,style: TextStyle(fontSize: 18), textAlign: TextAlign.center)) ;
  }
}
/**
 * Using this propert will not  align the text in the center.
 * textAlign: TextAlign.center -->It will wrap the text with the minimum text length required.
 * 
 * By using another property i.e Container will make the text ailgn in the center.
 */