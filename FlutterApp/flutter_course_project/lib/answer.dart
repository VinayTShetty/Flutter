import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectedHadler;
  Answer(this.selectedHadler);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        width: double.infinity,
        child: RaisedButton(
            color: Colors.blue,
            child: Text('Answer  1'),
            onPressed: () {
              selectedHadler;
            }));
  }
}
