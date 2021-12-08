import '../controller/count_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountPage extends StatelessWidget {

  // final countC=Get.put(CountController());
  final logic = Get.find<CountController>();

  CountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Count Page'),
      ),
      body: Center(
          child:
          GetBuilder<CountController>(
            builder: (logic) =>
               Text(
                "${logic.counter}",
                style: TextStyle(fontSize: 35),
              )
            ,
          )


        // ${logic.counter}
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          logic.add();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
