import 'package:flutter/foundation.dart';

class SliderProvider with ChangeNotifier {
  double _sliderValue = 0;

  double get sliderValue => _sliderValue;

  void setSliderValue(double updatedValue) {
    _sliderValue = updatedValue;
    notifyListeners();
  }
}
