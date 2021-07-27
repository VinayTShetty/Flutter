import 'package:flutter/material.dart';

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

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Demo another Widget')),
            body: Column(children: [
              Text('Demo Question answered'),
              RaisedButton(child: Text('Question 1'), onPressed: answerQuestion),
              RaisedButton(child: Text('Question 2'), onPressed: answerQuestion),
              RaisedButton(child: Text('Question 3'), onPressed: answerQuestion)
            ])));
  }

  void answerQuestion() {
    print('Button Clicked');
  }
}

/**
 * To add Multiple button s in the Screen we need to use the column widget.
 */
