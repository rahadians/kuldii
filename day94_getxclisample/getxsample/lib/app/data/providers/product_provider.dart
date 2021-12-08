import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getxsample/app/modules/home/controllers/home_controller.dart';

import '../models/product_model.dart';

class ProductProvider extends GetConnect {
  String url =
      "https://kuldii-get-cli-default-rtdb.asia-southeast1.firebasedatabase.app/";


  // User userById(String id) {
  //   return users.firstWhere((element) => element.id == id);
  // }
  //
  // void edit(String id, String name, String email, String phone) {
  //   if (name != '' && email != '' && phone != '') {
  //     if (email.contains("@")) {
  //       UserProvider().postData(name, email, phone).then((_) {
  //         final user = userById(id);
  //         user.name = name;
  //         user.email = email;
  //         user.phone = phone;
  //         users.refresh();
  //       });
  //
  //       Get.back();
  //     } else {
  //       snackBarError("Masukan email valid");
  //     }
  //   } else {
  //     snackBarError("Semua data harus diisi");
  //   }
  // }
  //

  // Future<Response> editData(String id, String name,String email, String phone){
  //
  //   final body = json.encode({
  //     "name" : name,
  //     "email" : email,
  //     "phone" : phone,
  //   }
  //   );
  //
  //   return patch(url+"users/$id.json", body);
  // }


  Future<Response> editProduct(String id, String name) async {

    final body = await  json.encode({
      "name": name,
    });
    return pat(url + 'products/$id.json',body);

  }


  // Future<void> editProduct(String id, String name) async {
  //
  //
  //   final response = await patch(url + 'products/$id.json', {
  //     "name": name,
  //
  //   });
  //
  // }

  Future<dynamic> postProduct(String name, String date) async {
    final response = await post("$url" + 'products.json', {
      "name": name,
      "CreateAt": date,
    });
    return response.body;
  }

  Future<void> deleteProduct(String id) async =>
      await delete("$url" + 'products/$id.json');
}
