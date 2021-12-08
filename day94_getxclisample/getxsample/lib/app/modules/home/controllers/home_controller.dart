import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxsample/app/data/models/product_model.dart';
import 'package:getxsample/app/data/providers/product_provider.dart';

class HomeController extends GetxController {
  var produkHC = List<Product>.empty().obs;

  void dialogError(String msg) {
    Get.defaultDialog(
        title: "Terjadi kesalahan",
        content: Text(
          msg,
        ));
  }

  void add(String name) {
    if (name != '') {
      final date = DateTime.now().toIso8601String();
      //then itu dipakai untuk mengambil id yang dibuat oleh firebase
      ProductProvider().postProduct(name, date).then((response) {
        final data = Product(
          id: response["name"],
          name: name,
          createAt: date,
        );

        produkHC.add(data);
        Get.back();
      });
    } else {
      dialogError("Semua Input harus terisi");
    }
  }

  //Delete Data

  void delete(String id) {
    ProductProvider()
        .deleteProduct(id)
        .then((_) => produkHC.removeWhere((element) => element.id == id));
  }

  Product findById(String id) {
    return produkHC.firstWhere((element) => element.id == id);
  }

  void edit(String id, String name) {
    //diisi apa aja yang bisa diedit
    final data = findById(id);

    ProductProvider().editProduct(id,name).then((_) {
      data.name = name;
      produkHC.refresh(); //dipakai saat edit
      Get.back();
    });
  }
}
