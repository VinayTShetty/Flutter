import 'package:flutter/material.dart';
import 'package:fluttertutorials/provider/Counter_Provider.dart';
import 'package:fluttertutorials/screen/count_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /**
     * Providing GlobalContext of the Provider.i.e CounterProvider
     */
    return ChangeNotifierProvider(
      create: (_) => CountProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: CounterScreen(),
      ),
    );
  }
}
