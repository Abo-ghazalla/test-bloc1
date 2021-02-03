import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int counter;

  CounterState({this.counter});

  @override
  // TODO: implement props
  List<Object> get props => [counter];
}

class InitialState extends CounterState {
  InitialState() : super(counter: 0);
}

class NumbertState extends CounterState {
  final int counter;
  NumbertState(this.counter) : super(counter: counter);
}

class WaitingState extends CounterState {
  final int lastCount;

  WaitingState(this.lastCount):super(counter: lastCount);
}
