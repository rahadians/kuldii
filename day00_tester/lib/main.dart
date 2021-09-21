import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,

          child: Column(
            children: <Widget>[
              Container(
                child: Row(

              children: [

                Image.network(
                    'https://flutter-examples.com/wp-content/uploads/2019/09/blossom.jpg',
                    width: 300,
                    height: 200,
                    fit: BoxFit.contain),
                Image.network(
                    'https://flutter-examples.com/wp-content/uploads/2019/09/sample_img.png',
                    width: 200,
                    fit: BoxFit.contain),
                Container(
                  color: Colors.pink, // Yellow
                  height: 200.0,
                  width: 200.0,
                ),
              ],
                ),
                color: Colors.green, // Yellow
                height: 200.0,
                width: 200.0,
              ),
              Image.network(
                  'https://flutter-examples.com/wp-content/uploads/2019/09/blossom.jpg',
                  width: 300,
                  height: 200,
                  fit: BoxFit.contain),
              Image.network(
                  'https://flutter-examples.com/wp-content/uploads/2019/09/sample_img.png',
                  width: 200,
                  fit: BoxFit.contain),
              Container(
                color: Colors.pink, // Yellow
                height: 200.0,
                width: 200.0,
              ),
              Text('Some Sample Text - 1', style: TextStyle(fontSize: 28)),
              Container(
                color: Colors.redAccent, // Yellow
                height: 200.0,
                width: 200.0,
              ),
              Image.network(
                  'https://flutter-examples.com/wp-content/uploads/2019/09/blossom.jpg',
                  width: 300,
                  height: 200,
                  fit: BoxFit.contain),
            ],
          ),
        ),
      ),
    )));
  }
}
