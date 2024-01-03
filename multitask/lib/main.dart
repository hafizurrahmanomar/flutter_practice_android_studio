import 'package:flutter/material.dart';
//import 'package:multitask/HomePage.dart';
import 'package:multitask/expanded.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //home: HomePage(),
      home: ExpandedPractice(
        title: 'Expanded Widget',
      ),
    );
  }
}
