import 'package:get/get.dart';

import 'state.dart';

class ModelsLogic extends GetxController {
  final OrangState orang = OrangState();

  void changeUpperCase(){
    orang.nama.value=orang.nama.value.toUpperCase();
  }


}
