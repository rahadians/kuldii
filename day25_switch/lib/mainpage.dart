import 'package:flutter/material.dart';

class Main_Page extends StatefulWidget {
  const Main_Page({Key? key}) : super(key: key);

  @override
  _Main_PageState createState() => _Main_PageState();
}

class _Main_PageState extends State<Main_Page> {
  String warna = "Putih";
  bool statusSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar Switch"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.grey,
              child: Text(warna),
            ),
            Switch(
                value: statusSwitch,
                onChanged: (value) {
                  statusSwitch = !statusSwitch;

                  (statusSwitch == true) ? warna = "Merah" : warna="Putih";
                  setState(() {

                  });
                })
          ],
        ),
      ),
    );
  }
}
