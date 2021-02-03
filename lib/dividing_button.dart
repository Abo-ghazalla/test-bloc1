import 'package:bloc_test1/counter_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DivideButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text("/2"),
      onPressed: () async {
        BlocProvider.of<CounterBloc>(context, listen: false).waiting();
        await Future.delayed(Duration(seconds: 2));
        BlocProvider.of<CounterBloc>(context, listen: false).divide();
      },
    );
  }
}
