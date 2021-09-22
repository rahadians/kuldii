import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var waktuSekarang = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(waktuSekarang.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            OutlinedButton(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: waktuSekarang,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2050),
                     // builder: (context,child){
                     //  return Theme(
                     //    data: ThemeData.dark(),
                     //    child: child,);
                     // },
                    initialDatePickerMode: DatePickerMode.year
                  ).then((value) {
                    setState(() {
                      (value != null)
                          ? waktuSekarang = value
                          : waktuSekarang = DateTime.now();
                    });
                  });
                },
                child: Text("Date Picker"))
          ],
        ),
      ),
    );
  }
}
