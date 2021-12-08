import '../controller/shop_controller.dart';
import '../pages/shop/shop_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopPage extends StatelessWidget {

  final shopC = Get.put(ShopController(),tag: 'total');

  final quantityC=Get.create(shopC());


  ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    final valshop = Get.find<ShopController>();

    return Scaffold(
      floatingActionButton: CircleAvatar(
        child: GetBuilder<ShopController>(builder: (logic) {
          return Text("${shopCc.total}");
        }),
      ),
      appBar: AppBar(
        title: Text("Shop Page"),
      ),
      body: Center(
          child: ListView.builder(
            itemCount: 5,

            itemBuilder: (BuildContext context, int index) =>ShopItem(valshop: valshop),
          )),
    );
  }
}

