import 'package:day73_getxstatemanag/models/state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class HomePage extends StatelessWidget {
  final orangS = Get.put(OrangState());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Get State Management"),
      ),
      body: Center(
        child: Obx(() =>
            Text(
              "Saat Ini Ingka 0",
              style: TextStyle(fontSize: 35),
            ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          orangS.nama.value = orangS.nama.value.toUpperCase();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
