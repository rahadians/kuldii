import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class myController extends GetxController {
  // final myController state = myController();

  var count = 0;

  var textC=TextEditingController();

  void tambah(){
    count++;

    update();
  }

}
