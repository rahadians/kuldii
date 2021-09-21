import '../Pages/page_dua.dart';
import '../Pages/page_satu.dart';
import 'package:flutter/material.dart';

class Main_Page extends StatelessWidget {
  const Main_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.of(context).pushNamed('/page_satu');
      //   },
      //   child: Icon(Icons.keyboard_arrow_right),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        title: Text('Routes'),
      ),
      drawer: Drawer(
        child: ListView(children: [
          Column(
            children: [
              Container(
                  height: 100,
                  padding: EdgeInsets.all(20),
                  color: Colors.red,
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Menu Pilihan",
                    style: TextStyle(
                        fontSize: 24,
                        backgroundColor: Colors.red,
                        color: Colors.white),
                  )),
              SizedBox(
                height: 3,
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  "Home Page",
                  style: TextStyle(fontSize: 20),
                ),
                onTap:(){
                  Navigator.of(context).pushNamed('/homepage');
                },
              ),
              SizedBox(
                height: 3,
              ),
              ListTile(
                title: Text(
                  "Page Satu",
                  style: TextStyle(fontSize: 20),
                ),
                leading: Icon(Icons.email),
                onTap: (){
                  Navigator.of(context).pushNamed('/page_satu');
                },
              ),
              SizedBox(
                height: 3,
              ),
              ListTile(
                leading: Icon(Icons.whatshot),
                title: Text(
                  "Page Dua",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed('/page_dua');
                },
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
