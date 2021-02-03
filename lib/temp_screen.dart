import 'package:bloc_test1/screen.dart';
import 'package:flutter/material.dart';

class TempScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          child: Text("go"),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Screen()));
          },
        ),
      ),
    );
  }
}
