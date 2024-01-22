import 'package:flutter/foundation.dart';

/**
 * ChangeNotifier acts as GlobalContext. So it will be intialized in main.dart.i.e  main method () starting of the application.
 */
class CountProvider with ChangeNotifier {
  int _counter = 0;

  int get countValue => _counter;

  void setCounter() {
    _counter++;
    notifyListeners();
  }
}
