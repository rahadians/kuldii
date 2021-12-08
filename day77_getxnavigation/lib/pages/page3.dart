import 'dart:html';

import 'package:day77_getxnavigation/pages/page4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.back(
                    result: "Ini dari page 3 tampil di layer sebelumnya"
                  );
                },
                child: Text(
                  "Previous Page >>",
                  style: TextStyle(fontSize: 35),
                )),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/page-4');
                },
                child: Text(
                  "Next Page >>",
                  style: TextStyle(fontSize: 35),
                )),
          ],
        ),
      ),
    );
  }
}
