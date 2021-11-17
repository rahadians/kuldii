import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/counter_controller.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterC = Get.put(CounterController());
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Obx(() => Text(    //Obx seperti builder
                  "Angka ${counterC.counter}",
                  style: TextStyle(fontSize: 35),
                ))),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counterC.increment();
          },
        ));
  }
}
