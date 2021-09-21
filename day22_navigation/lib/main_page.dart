import '../Pages/page_dua.dart';
import '../Pages/page_satu.dart';
import 'package:flutter/material.dart';

class Main_Page extends StatelessWidget {
  const Main_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return Page_Satu();
          }));
        },
        child: Icon(Icons.keyboard_arrow_right),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        title: Text('Navigation'),
      ),
      body: Center(
        child: Text("Ini Halaman Main"),
      ),
    );
  }
}
