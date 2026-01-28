import 'package:bloc_practice/cubits/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
   int counter = 0;

  CounterCubit() : super(CounterStateInitial());

  void increment() {
    counter++;
    emit(CounterStateValueUpdated(counter));
  }

  void decrement() {
    counter--;
    emit(CounterStateValueUpdated(counter));
  }
}
