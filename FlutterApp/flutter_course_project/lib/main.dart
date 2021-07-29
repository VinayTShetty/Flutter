import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

/**
 * Application removed blck background containing only White space.
 */
void main() => runApp(DemoApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('My Frist App')),
          body: Text('Hello World o')),
    );
  }
}

class DemoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _UiAppState();
  }
}

class _UiAppState extends State<DemoApp> {
  @override
  Widget build(BuildContext context) {
    var question = [
      'which is your favorite dish',
      'what s your favorite Sports',
      'what s your favorite hobby',
      'what s your favorite book',
    ];
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text(' Demo Flutter Application ')),
            body: Column(children: [
              Question(question[questionIndex]),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion)
            ])));
  }

  var questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      questionIndex = 0;
      questionIndex = questionIndex + 1;
    });
    print('Button Clicked');
  }
}

/**
 * To add Multiple button s in the Screen we need to use the column widget.
 */
