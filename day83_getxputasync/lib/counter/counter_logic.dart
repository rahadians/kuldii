import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'counter_state.dart';

class myController extends GetxController {
  var count = 0.obs;

  Future<void> setData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', 12345);

    count.value = prefs.getInt('counter')!.toInt();

    // return prefs;
  }
}
