import 'dart:async';

// patrón bloc, clase para controlar información mediante streams

class CounterBloc {
  static final CounterBloc _instance = CounterBloc._();

  CounterBloc._();

  factory CounterBloc() {
    return _instance;
  }

  int _counter = 0;

  final StreamController<int> _counterCtrl = StreamController<int>();

  set increment(int val) {
    _counter += val;

    _counterCtrl.sink.add(_counter);
  }

  set decrement(int val) {
    _counter -= val;
    _counterCtrl.sink.add(_counter);
  }

  Stream<int> get counter => _counterCtrl.stream;

  dispose() {
    _counterCtrl.close();
  }
}
