import 'package:day73_getxstatemanag/models/view.dart';
import 'package:flutter/material.dart';
import '../models/state.dart';
import '../models/logic.dart';
import '../models/view.dart';
import 'package:day73_getxstatemanag/counter/counter_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageCounter(),
    );
  }
}
