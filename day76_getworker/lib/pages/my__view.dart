import 'package:day76_getworker/controller/my__logic.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class MyHomePage extends StatelessWidget {
  My_Logic myC = Get.put(My_Logic());

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
        actions: [
          IconButton(onPressed: ()=>myC.reset(), icon: Icon(Icons.refresh))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<My_Logic>(
              // assignId: true,
              builder: (controller) => Text(
                "Terjadi sesuatu ${controller.count} X",
                style: TextStyle(fontSize: 25),
              ),
            ),

            SizedBox(
              height: 30,
            ),
            TextField(
              onChanged: (_) => myC.change(),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
