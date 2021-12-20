import 'package:flutter/material.dart';

class CounterBlock extends ChangeNotifier {
  int _counter = 10;

  int get counter => _counter;

  set counter(int value) {
    _counter = value;
    notifyListeners();
  }

  increment() {
    counter = counter + 1;
  }

  decrement() {
    counter = counter - 1;
  }
}
