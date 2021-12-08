import 'package:day77_getxnavigation/pages/page3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageDua extends StatelessWidget {
  const PageDua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  "Previous Page >>",
                  style: TextStyle(fontSize: 35),
                )),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () async {
               var data = await Get.to(PageTiga());
               print("Hasil : $data");
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
