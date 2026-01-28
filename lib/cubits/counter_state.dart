// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

abstract class CounterState extends Equatable {
  const CounterState();
}

class CounterStateInitial extends CounterState {
  const CounterStateInitial();
  @override
  List<Object?> get props => [];
}

class CounterStateValueUpdated extends CounterState {
  int counter;
  CounterStateValueUpdated(this.counter);
  @override
  List<Object?> get props => [counter];
}
