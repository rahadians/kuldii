import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http_project/models/http_provider.dart';
import 'package:provider/provider.dart';

class HomeProvider extends StatelessWidget {
  // String idku = "";
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

        // ListView.builder(
        //   itemCount: itemCount,
        //   itemBuilder: (context, position) {
        //     return listItem();
        //   },
        // ),


        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context,int),
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height: 100,
                  width: 100,
                  child: Consumer<HttpProvider>(
                    builder: (context, value, child) => Image.network(
                      (value.data["avatar"] == null)
                          ? "https://picsum.photos/id/1/200/300"
                          : value.data["avatar"],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              FittedBox(
                child: Consumer<HttpProvider>(
                    builder: (context, value, child) => Text(
                          (value.data["id"] == null)
                              ? "ID : Belum ada data"
                              : "ID : ${value.data["id"]}",
                          style: TextStyle(fontSize: 20),
                        )),
              ),
              SizedBox(height: 20),
              FittedBox(child: Text("Name : ", style: TextStyle(fontSize: 20))),
              FittedBox(
                child: Text(
                  "Belum ada data",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 20),
              FittedBox(child: Text("Email : ", style: TextStyle(fontSize: 20))),
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
                  // idku = ((1 + Random().nextInt(100)).toString());
                  dataProvider.connectAPI((1 + Random().nextInt(100)).toString());

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
      ),
    );
  }
}
