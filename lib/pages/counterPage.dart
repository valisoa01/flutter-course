import 'package:flutter/material.dart';
import 'package:fluttercourse/blocs/count_bloc.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget{
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CountBloc countBloc = Provider.of<CountBloc>(context);
     return Scaffold(
      body: Container(
        child: Center(
          child: Text(countBloc.counter.toString()),
        ),
      ),
     );
  }
  
}