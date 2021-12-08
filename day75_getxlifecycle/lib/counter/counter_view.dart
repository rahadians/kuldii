import '../counter/text_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_logic.dart';
import 'other_page.dart';

class HomePage extends StatelessWidget {
  final countC = Get.put(CounterController());

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final logic = Get.find<CounterLogic>();
    // final state = Get.find<CounterLogic>().state;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Get.to(()=>TextPage()),
            icon: Icon(Icons.refresh),
          )
        ],
      ),
      body: Center(
        child: CountWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countC.tambah();
        },
      ),
    );
  }
}

class CountWidget extends StatelessWidget {
  final countC = Get.find<CounterController>();
  CountWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(
        // builder: (controller) => Text("Angka ${controller.count}"));
    builder: (controller) => Text("Home Page",style: TextStyle(fontSize: 35),));
  }
}
