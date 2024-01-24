import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});

  ValueNotifier<int> _counter = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    print("Entire Widget Build");
    return Scaffold(
      appBar: AppBar(
        title: Text('Value Notifier'),
      ),
      body: Center(
          child: ValueListenableBuilder(
        valueListenable: _counter,
        builder: (context, value, child) {
          print("Only this widget Build");
          return Text(_counter.value.toString());
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.value++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
