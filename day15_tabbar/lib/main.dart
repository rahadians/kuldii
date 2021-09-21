import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Tab> myTab = [
    Tab(
      child: Text("Tab 1"),
      icon: Icon(Icons.person),
    ),
    Tab(
      child: Text("Tab 2"),
      icon: Icon(Icons.email),
    ),
    Tab(child: Icon(Icons.ice_skating))
  ];

  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Contoh Tabbar"),
            bottom: TabBar(
              tabs: myTab,
              indicatorColor: Colors.black,
              indicatorWeight: 10,
              //APabila mau indicator sendiri pakai parameter indicator

              // indicator: BoxDecoration(
              //   color: Colors.blueGrey
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
