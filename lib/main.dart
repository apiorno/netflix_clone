import 'package:flutter/material.dart';
import 'package:netflix_clone/pages/initial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InitialPage(),
    );
  }
}
