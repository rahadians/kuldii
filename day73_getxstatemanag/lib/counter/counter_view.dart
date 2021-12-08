// import 'package:day73_getxstatemanag/counter/counter_state.dart';
import 'package:day73_getxstatemanag/counter/counter_logic.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageCounter extends StatelessWidget {
  CounterLogic countC = Get.put(CounterLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [ 
          IconButton(onPressed: ()=>Get.to(CountPage()), icon: Icon(Icons.next_plan))
        ],
        title: Text("Get State Management"),
      ),
      body: Center(
        child: GetBuilder<CounterLogic>(
          id: "id_1",
          init: CounterLogic(),
          builder: (controller) => Text(
            "Saat Ini Angka ${controller.counter}",
            style: TextStyle(fontSize: 35),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Get.find<CounterLogic>().increment();
          countC.increment();
          // Get.find<CounterLogic>().increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
