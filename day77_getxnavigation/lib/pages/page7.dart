import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTujuh extends StatelessWidget {
  const PageTujuh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 5"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text(
                  "Previous Page >>",
                  style: TextStyle(fontSize: 35),
                )),
            SizedBox(
              height: 30,
            ),

          ],
        ),
      ),
    );
  }
}
