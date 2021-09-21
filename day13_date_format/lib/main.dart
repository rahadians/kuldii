import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Date Format")),
          body: Center(
            child: Text(
              DateFormat.yMMMMEEEEd().add_Hms().format(
                    DateTime.now(),
                  ),
              style: TextStyle(fontSize: 25),
            ),
          )),
    );
  }
}
