import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/route_name.dart';

class Product extends StatelessWidget {
  // final logic = Get.put(HomePage());
  // final state = Get.find<HomePage>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Prodcut"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () =>
                    Get.toNamed(RouteName.product + '/1?name=Jaket&ukuran=XL'),
                child: Text("Product 1")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () => Get.toNamed(
                    RouteName.product + '/2?name=Kaos Kaki&ukuran=L'),
                child: Text("Product 2")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () => Get.toNamed((RouteName.product +
                    '/3?name=Sandal&warna=coklat&ukuran = 41')),
                child: Text("Product 3")),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
