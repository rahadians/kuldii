import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  // final logic = Get.put(ShowdialogLogic());
  // final state = Get.find<ShowdialogLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () => Get.defaultDialog(
          barrierDismissible: false,
            title: "Judul Dialog",
            middleText: "Ini isi Dialog",
            textCancel: "Batal",
            confirm: ElevatedButton(onPressed: () {}, child: Text("Oke")))),
      appBar: AppBar(),
      body: Center(),
    );
  }
}
