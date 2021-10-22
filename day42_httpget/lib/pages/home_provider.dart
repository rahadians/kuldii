import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http_project/models/http_provider.dart';
import 'package:provider/provider.dart';

class HomeProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<HttpProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("GET - STATEFUL"),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: 100,
                width: 100,
                child: Consumer<HttpProvider>(
                    builder: (BuildContext context, value, _) => Image.network(
                          (value.data["avatar"] ==
                                  null) //kesalahan harus ada ==
                              ? "https://picsum.photos/seed/picsum/200/300"
                              : value.data["avatar"],
                          fit: BoxFit.cover,
                        )),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(
              child: Consumer<HttpProvider>(
                builder: (context, value, _) => Text(
                  (value.data["id"] == null)
                      ? "ID : Belum ada data"
                      : value.data["id"].toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 20),
            FittedBox(
                child: Consumer<HttpProvider>(
                    builder: (context, value, child) => Text(
                        (value.data["first_name"] == null)
                            ? "Belum ada Data"
                            : "Name : ${value.data["first_name"]} ",
                        style: TextStyle(fontSize: 20)))),
            FittedBox(
                child: Consumer<HttpProvider>(
                    builder: (context, value, child) => Text(
                        (value.data["last_name"] == null)
                            ? "Belum ada Data"
                            : "Name : ${value.data["last_name"]} ",
                        style: TextStyle(fontSize: 20)))),
            SizedBox(height: 20),
            FittedBox(
                child: Consumer<HttpProvider>(
                    builder: (context, value, child) => Text(
                        (value.data["email"] == null)
                            ? "Belum ada Email"
                            : "Name : ${value.data["Email"]} ",
                        style: TextStyle(fontSize: 20)))),
            FittedBox(
              child: Text(
                "Belum ada data",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 100),
            OutlinedButton(
              onPressed: () {
                dataProvider.connectAPI(Random().nextInt(10).toString());
              },
              child: Text(
                "GET DATA",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
