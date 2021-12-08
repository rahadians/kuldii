import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_logic.dart';

class HomePage extends StatelessWidget {
  final countC = Get.put(CounterLogic());
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final logic = Get.find<CounterLogic>();
    // final state = Get.find<CounterLogic>().state;
    final logic = Get.find<CounterLogic>();

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(
          () => Text(

            "Angka Sekarang ${countC.count}",
            style: TextStyle(fontSize: 35),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // logic.increment();

        countC.increment();
      }),
    );
  }
}
