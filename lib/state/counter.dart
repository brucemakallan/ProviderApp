import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int _value = 12;

  // getter
  int get count => _value;

  // setter
  set count(int newValue) {
    _value = newValue;
    notifyListeners();
  }

  increment() {
    count = _value + 1;
  }

  decrement() {
    count = _value - 1;
  }
}
