import 'package:get/get.dart';

import 'counter_state.dart';

class CounterLogic extends GetxController {
  var  counter=0;


increment() {
  counter++;

  update(['id_1','id_2']); //ini seperti changenotifier listener
}
}
