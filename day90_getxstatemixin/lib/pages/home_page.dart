
import 'package:day90_getxstatemixin/controller/my_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<MyController> {

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final myC = Get.find<MyController>();
    return Scaffold(

      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        // child: Obx(() {
        //   return Text("angka ${controller.count}",style: TextStyle(fontSize: 25),);
        // }

        child: controller.obx((state) => Text("Nama : ${state!["first_name"]}"),
          onEmpty: Text("Belum ada data"),
          onLoading: Text("Loading."),
          onError: (error) => Text(error.toString()),
        ),
      ),
      floatingActionButton: FloatingActionButton( onPressed: ()=>controller.getData(),),
    );
  }
}
