

import 'package:get/get.dart';
import 'package:meta/meta.dart';

class CountController extends GetxController {

  //
  // final _obj = 0.obs;
  // set obj(value) => _obj.value = value;
  // get obj => _obj.value;

  var counter=0;

  void add(){
    counter++;
    update();
  }
}