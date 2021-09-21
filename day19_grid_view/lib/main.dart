import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Container> myList = List.generate(90, (index) {
    return Container(
      color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256),
          Random().nextInt(256)),
    );
  });
  // const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Grid View")),
      // body: GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 4,
      //       crossAxisSpacing: 20,
      //       mainAxisExtent: 10,
      //       childAspectRatio: 4 / 3),
      //   children: myList,
      // ),
          body: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            childAspectRatio: 4/3,
            children: myList,
          ),
    ));
  }
}
