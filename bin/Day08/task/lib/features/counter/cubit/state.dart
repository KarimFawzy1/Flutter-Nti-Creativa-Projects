sealed class CounterState {
  final int counter;
  CounterState({required this.counter});
}

class CounterInitialState extends CounterState {
  CounterInitialState({required super.counter});
}

class CounterIncrementState extends CounterState {
  CounterIncrementState({required super.counter});
}

class CounterDecrementState extends CounterState {
  CounterDecrementState({required super.counter});
}
