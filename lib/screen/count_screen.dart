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
