import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:getxsample/app/modules/home/controllers/home_controller.dart';

import '../controllers/edit_controller.dart';

class EditView extends GetView<EditController> {
  final homeC = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    final data = homeC.findById(Get.arguments);
    controller.name.text = data.name!;
    return Scaffold(
      appBar: AppBar(
        title: Text('EDIT PRODUCT'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
            child: ListView(
          children: [
            TextField(
              autocorrect: false,
              controller: controller.name,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Product Name",
                hintText: "Input Product Name Here..",
              ),
              onEditingComplete: () => Get.find<HomeController>().edit(
                  Get.arguments,
                  controller.name.text), //ini agar tombol done berfungsi,
            ),

            SizedBox(
              height: 30,
            ),
            // ElevatedButton(onPressed: () => homeC.edit(Get.arguments,controller.name.text), //ini agar tombol done berfungsi,
            ElevatedButton(
                onPressed: () => Get.find<HomeController>().edit(Get.arguments,
                    controller.name.text), //ini agar tombol done berfungsi,
                child: Text("Save"))
          ],
        )),
      ),
    );
  }
}
