import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'counter_logic.dart';

class HitungPage extends StatelessWidget {
  final c = Get.put(myController());

  HitungPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hitung Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                    "Angka ${c.count}",
                    style: TextStyle(fontSize: 35),
                  ))
            ],
          ),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: () => c.setData()));
  }
}
