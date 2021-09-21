import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String perubahan = "Anda Belum Mengklik";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Text(perubahan),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Confirm"),
                  content: Text("Are You Sure"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        perubahan = "Anda mengklik No";
                        // print(perubahan);

                        Navigator.of(context).pop();
                        setState(() {});
                      },
                      child: Text("No"),
                    ),
                    TextButton(
                        onPressed: () {
                          perubahan = "Anda mengklik Yes";
                          // print(perubahan);

                          Navigator.of(context).pop();
                          setState(() {});
                        },
                        child: Text("Yes"))
                  ],
                );
              });
        },
        child: Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
