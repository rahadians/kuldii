import 'dart:html';

import 'package:day77_getxnavigation/pages/page2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.off(PageDua());
                },
                child: Text(
                  "Next Page >>",
                  style: TextStyle(fontSize: 35),
                ))
          ],
        ),
      ),
    );
  }
}
