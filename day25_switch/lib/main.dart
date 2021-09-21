import 'package:flutter/material.dart';

import './mainpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home_page',
      routes: {
        '/home_page': (context)=>Main_Page(),
      },
    );
  }
}
