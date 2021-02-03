import 'package:bloc_test1/dividing_button.dart';
import 'package:bloc_test1/counter_bloc/counter_bloc.dart';
import 'package:bloc_test1/counter_bloc/counter_event.dart';
import 'package:bloc_test1/counter_bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final bloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(title: Text("welcome")),
      body: BlocProvider<CounterBloc>(
        create: (_) =>
          CounterBloc(InitialState())
        ,
        
        child: Builder(
          builder: (ctx) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.plus_one),
                onPressed: BlocProvider.of<CounterBloc>(ctx,listen:false).increment,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    child: Text("x2"),
                    onPressed: BlocProvider.of<CounterBloc>(ctx,listen:false).multiply,
                  ),
                  CircleAvatar(
                    radius: 30,
                    child: BlocBuilder<CounterBloc, CounterState>(
                      builder: (_, state) {
                        print("msa");
                        if (state is WaitingState)
                          return CircularProgressIndicator();
                        return Text(
                          "${state.counter}",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        );
                      },
                    ),
                  ),

                  DivideButton()
                  
                ],
              ),
              IconButton(
                icon: Icon(Icons.exposure_minus_1),
                onPressed: BlocProvider.of<CounterBloc>(ctx,listen:false).decrement,
              )
            ],
          ),
        ),
      ),
    );
  }
}
