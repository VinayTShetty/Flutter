import 'dart:async';

import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  int counter = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Init Bloc Executed");
    Timer.periodic(Duration(seconds: 1), (timer) {
      counter++;
      setState(() {});
      print("Timer Running");
    });
  }

  @override
  Widget build(BuildContext context) {
    print("Widget Built");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Need of Provider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Text(
                counter.toString(),
                style: TextStyle(fontSize: 50),
              ),
            ),
          )
        ],
      ),
    );
  }
}
