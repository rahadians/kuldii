import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../dynamic/dynamic_logic.dart';

class HomePage extends StatelessWidget {
  // final logic = Get.put(HomePage());
  // final state = Get.find<HomePage>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => Get.toNamed('/product'),
            child: Text("All Product")),
      ),
    );
  }
}
