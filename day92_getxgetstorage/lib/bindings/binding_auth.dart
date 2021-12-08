import '/controller/auth_controller.dart';

import 'package:get/get.dart';

class BindingAuth implements Bindings{
  @override
  void dependencies() {
    Get.put(AuthC());
    // TODO: implement dependencies
  }

}