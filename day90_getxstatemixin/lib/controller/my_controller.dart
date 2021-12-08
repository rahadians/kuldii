import 'package:get/get.dart';
import '../provider/user_p.dart';

class MyController extends GetxController
    with StateMixin<Map<String, dynamic>> {
  void getData() {
    try {
      UserProvider().getUser().then((response) {
        if (response.statusCode == 200) {
          final data = response.body["data"] as Map<String,
              dynamic>; //data yang diambil dari api di masukkan ke var map

          change(
            data,

            status: RxStatus.success(),

          );

        }
      }, onError: (_) {
        change(null, status: RxStatus.error("Tidak dapat data dari API "));
      });
    } catch (err) {
      change(null, status: RxStatus.error(err.toString()));
    }
  }

  var count = 0.obs;

  void add() {
    count++;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    change(null, status: RxStatus.empty());
    super.onInit();
  }
}
