import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getxsample/app/modules/home/controllers/home_controller.dart';

import '../controllers/add_controller.dart';

class AddView extends GetView<AddController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADD PRODUCT'),
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
              onEditingComplete: () => Get.find<HomeController>().add(controller.name.text), //ini agar tombol done berfungsi,
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () => Get.find<HomeController>().add(controller.name.text), //ini agar tombol done berfungsi,
              child: Text("Add Product"))
          ],
        )),
      ),
    );
  }
}
