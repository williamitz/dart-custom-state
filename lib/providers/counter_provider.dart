import 'package:flutter/material.dart';

class CounterProv with ChangeNotifier {
  int _counter = 0;

  set increment(int val) {
    _counter += val;

    notifyListeners();
  }

  set decrement(int val) {
    _counter -= val;

    notifyListeners();
  }

  int get counter => _counter;
}
