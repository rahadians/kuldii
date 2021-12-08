import 'package:get/get.dart';

import 'counter_state.dart';

class CounterLogic extends GetxController {
  // final CounterLogic state = CounterLogic(count: count.obs);
  var count=0.obs;

  void increment(){
    count++;
  }
}
