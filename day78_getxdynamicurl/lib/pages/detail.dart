
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product ID ${Get.parameters['id']}"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Product name ${Get.parameters['name']}"),
            Text("Ukuran Product ${Get.parameters['ukuran']}"),
          ],
        ),
      ),
    );
  }
}
