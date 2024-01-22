import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fluttertutorials/provider/Counter_Provider.dart';

class CounterScreen extends StatefulWidget {
  CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _State();
}

class _State extends State<CounterScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /**
     * the listner should be set to false,bcoz the init method will be called before the buid() method.
     */
    final countprovider = Provider.of<CountProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 0), (timer) {
      countprovider.setCounter();
    });
  }

  @override
  Widget build(BuildContext context) {
    print("Build Widget");
    final countprovider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
          child: Consumer<CountProvider>(builder: (context, value, child) {
        print("only this widget builds");
        return Text(
          value.countValue.toString(),
          style: TextStyle(fontSize: 50),
        );
      })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countprovider.setCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
