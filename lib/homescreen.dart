import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  int numberCounter = 100;
  @override
  Widget build(BuildContext context) {
    print("Widget Built");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('State Less Widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:
                Text(numberCounter.toString(), style: TextStyle(fontSize: 50)),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          numberCounter++;
          print("Total Number Counter = " + numberCounter.toString());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
