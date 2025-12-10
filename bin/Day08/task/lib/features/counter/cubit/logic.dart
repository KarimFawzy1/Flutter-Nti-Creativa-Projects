import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/counter/cubit/state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitialState(counter: 0));

  int counter = 0;
  void increment() {
    counter++;
    emit(CounterIncrementState(counter: counter));
  }

  void decrement() {
    if (counter > 0) {
      counter--;
      emit(CounterDecrementState(counter: counter));
    }
  }
}
