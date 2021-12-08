import 'package:day77_getxnavigation/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageEnam extends StatelessWidget {
  const PageEnam({Key? key}) : super(key: key);

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
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteName.page_7);
                },
                child: const Text(
                  "Next Page >>",
                  style: TextStyle(fontSize: 35),
                )),
          ],
        ),
      ),
    );
  }
}
