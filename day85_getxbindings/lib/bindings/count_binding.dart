import 'package:day85_getxbindings/controller/count_controller.dart';
import 'package:get/get.dart';

class CountB implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(CountController());
  }

}