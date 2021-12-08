import 'package:get/get.dart';

import 'counter_state.dart';

class CounterController extends GetxController {
  // final CounterController countC = CounterController();

  var count = 0;

  void tambah() {
    count++;
    update();
  }
}
