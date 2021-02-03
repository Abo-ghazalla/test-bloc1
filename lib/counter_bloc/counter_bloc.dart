import 'dart:developer';

import 'package:bloc_test1/counter_bloc/counter_event.dart';
import 'package:bloc_test1/counter_bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvents, CounterState> {
  CounterBloc(CounterState initialState) : super(initialState);

  void increment() => add(IncrementEvent());

  void decrement() {
    if (state.counter != 0) add(DecrementEvent());
  }

  void multiply() async {
    add(WaitingEvent());
    await Future.delayed(Duration(seconds: 2));
    add(MultiplyEvent());
  }

  void divide() => add(DivideEvent());
  void waiting() => add(WaitingEvent());

  @override
  Stream<CounterState> mapEventToState(CounterEvents event) async* {
    // TODO: implement mapEventToState
    if (event is IncrementEvent) {
      yield NumbertState(state.counter + 1);
    } else if (event is DecrementEvent) {
      yield NumbertState(state.counter - 1);
    } else if (event is MultiplyEvent) {
      yield NumbertState(state.counter * 2);
    } else if (event is DivideEvent) {
      yield NumbertState(state.counter ~/ 2);
    } else {
      yield WaitingState(state.counter);
    }
  }
}
