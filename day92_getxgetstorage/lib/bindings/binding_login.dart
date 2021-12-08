import '../controller/login_controller.dart';
import 'package:get/get.dart';

class BindingLogin implements Bindings{
  @override
  void dependencies() {
    Get.put(LoginC());

    // TODO: implement dependencies
  }

}