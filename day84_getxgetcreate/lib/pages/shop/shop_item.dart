import 'package:day84_getxgetcreate/controller/shop_controller.dart';

import '/controller/shop_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopItem extends StatelessWidget {
  // final shopC=Get.find<ShopController>();
  final ShopController valshop=Get.find<shopC>();
  ShopItem({
    Key? key,
    required this.valshop,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            onPressed: () {
              valshop.kurang();
            },
            icon: Icon(Icons.remove)),
        GetBuilder<ShopController>(builder: (logic) {
          return Text(
            "${valshop.quantity}",
            style: TextStyle(fontSize: 25),
          );
        }),
        IconButton(
            onPressed: () {
              valshop.tambah();
            },
            icon: Icon(Icons.add)),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
