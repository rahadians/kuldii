import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Dynamic Apps")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(
                fontSize: 20 + counter * 2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      if (counter > 1) {
                        counter--;
                      }
                      setState(() {});
                    },
                    child: Icon(Icons.remove)),
                ElevatedButton(
                    onPressed: () {
                      counter++;
                      setState(() {});
                    },
                    child: Icon(Icons.add)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
