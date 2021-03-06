import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  bool isDark = false;

  Future<void> setPreference() async {
    final jembatan = await SharedPreferences.getInstance();

    //clear sharedpreference ketika aplikasi pertama kali dijalankan
    if (jembatan.containsKey('myData')) {
      jembatan.clear();
    }

    //menyimpan data ke dalam local memory
    final myData = json.encode({
      'counter': counter.toString(),
      'isDark': isDark.toString(),
    });

    //membaca file dari local memory
    jembatan.setString('myData', myData);
    setState(() {});
  }

  Future<void> getPreference() async {
    final jembatan = await SharedPreferences.getInstance();

    //menyimpan data ke dalam local memory
    if (jembatan.containsKey('myData')) {
      final myData = json.decode(jembatan.getString('myData') ?? 'Data Null')
          as Map<String, dynamic>;

      counter = int.parse(myData["counter"]);
      isDark = (myData["isDark"] == "true") ? true : false;
    }
    setState(() {});

    final myData = json.encode({
      'counter': counter.toString(),
      'isDark': isDark.toString(),
    });

    //membaca file dari local memory
    jembatan.setString('myData', myData);
    setState(() {});
  }

  void minus() {
    counter = counter - 1;
    setPreference();
  }

  void add() {
    counter = counter + 1;
    setPreference();
  }

  void changeTheme() {
    isDark = !isDark;
    setPreference();
  }

  void refresh() {
    counter = 0;
    isDark = false;
    setPreference();
  }

  ThemeData dark = ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.amber,
      primarySwatch: Colors.amber,

      // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber)
      //     .copyWith(secondary: Colors.amber),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              primary: Colors.white,
              side: BorderSide(
                color: Colors.white,
                width: 2,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ))));

  ThemeData light = ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.amber,
      primarySwatch: Colors.amber,
      // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.amber)
      //     .copyWith(secondary: Colors.amber),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              primary: Colors.black,
              side: BorderSide(
                color: Colors.black,
                width: 2,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ))));

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getPreference(),
      builder: (context, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: isDark ? dark : light,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Counter App"),
            actions: [
              IconButton(onPressed: refresh, icon: Icon(Icons.refresh))
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Angka Saat ini adalah : ${counter}",
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(onPressed: minus, child: Icon(Icons.remove)),
                    OutlinedButton(onPressed: add, child: Icon(Icons.add)),
                  ],
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: changeTheme,
            child: Icon(Icons.color_lens),
          ),
        ),
      ),
    );
  }
}
