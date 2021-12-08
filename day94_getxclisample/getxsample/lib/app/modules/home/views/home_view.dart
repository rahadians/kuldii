import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getxsample/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';
import 'item_view.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ALL PRODUCT'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () => Get.toNamed(Routes.ADD), icon: Icon(Icons.add))
          ],
        ),
        body: Obx(
          ()=> controller.produkHC.isEmpty
              ? Center(child: Text("Belum Ada Data"))
              : ListView.builder(
                  itemCount: controller.produkHC.length,
                  itemBuilder: (context, index) {
                    final data = controller.produkHC[index];
                    return ItemView(data);
                  },
                ),
        ));
  }
}

// Center(
// child: Text(
// 'HomeView is working',
// style: TextStyle(fontSize: 20),
// ),
// ),
