import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginC extends GetxController {
  final hiden = true.obs;

  final rememberme = false.obs;

  late TextEditingController emailC;
  late TextEditingController passC;

  @override
  void onInit() async {
    super.onInit();
    emailC = TextEditingController();
    passC = TextEditingController();

    await GetStorage.init();
    final box = GetStorage();
    if (box.read('dataUser') != null) {
      final data = box.read("dataUser") as Map<String, dynamic>;
      emailC.text = data["email"];
      passC.text = data["password"];
      rememberme.value = data['rememberme'];
    }
  }

  @override
  void onClose() {
    // TODO: implement onClose
    emailC.dispose();
    passC.dispose();
    super.onClose();
  }


}
