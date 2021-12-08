import '../controller/my_controller.dart';
import 'package:get/get.dart';

class BindingMyC implements Bindings{
  @override
  void dependencies() {
   Get.put(MyController());
    // TODO: implement dependencies
  }

}