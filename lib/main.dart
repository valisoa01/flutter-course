import 'package:flutter/material.dart';
import 'package:fluttercourse/blocs/count_bloc.dart';
import 'package:fluttercourse/pages/counterPage.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CountBloc>(
      create: (context) => CountBloc(),
      child: MaterialApp(
        home: CounterPage(),
      ),
    );
  }
}
