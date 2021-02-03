import 'package:equatable/equatable.dart';

abstract class CounterEvents extends Equatable {
  @override
  List<Object> get props => [];
}

class IncrementEvent extends CounterEvents {}

class DecrementEvent extends CounterEvents{}

class DivideEvent extends CounterEvents{}

class MultiplyEvent extends CounterEvents{}

class WaitingEvent extends CounterEvents{}
