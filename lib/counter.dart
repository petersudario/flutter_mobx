import 'package:mobx/mobx.dart';

class Counter {

  Counter() {
    increment = Action(_increment);
  }

  final _value = Observable(0);
  int get value => _value.value;
  set value(int newValue) => _value.value = newValue;

  late Action increment;

  void _increment() {
    _value.value++;
  }
}