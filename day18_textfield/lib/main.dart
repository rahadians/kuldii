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
  TextEditingController nameController = TextEditingController();
  String hasil = "Hasil Input";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar Textfield"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: nameController,
                onChanged: (value) {},
                onSubmitted: (value) {
                  print(value);
                  setState(() {
                    hasil = value;
                  });
                },
                onEditingComplete: () {
                  // nameController.text;
                  setState(() {});
                },
              ),
              // Text(nameController.text,),
              Text(hasil),
            ],
          ),
        ),
      ),
    );
  }
}
