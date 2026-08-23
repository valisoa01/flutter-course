import 'package:flutter/material.dart';
import 'package:fluttercourse/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo flutter",
      theme: ThemeData(primarySwatch: Colors.cyan,useMaterial3: true,),
      home: HomePage(),
      
    );
  }
}