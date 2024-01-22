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
    final countprovider = Provider.of<CountProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Text(countprovider.countValue.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countprovider.setCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
