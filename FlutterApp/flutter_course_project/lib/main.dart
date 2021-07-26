import 'package:flutter/material.dart';
/**
 * Application removed blck background containing only White space.
 */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Frist App'),
        ),
        body: Text('Hello World'),
      ),
    );
  }
}
