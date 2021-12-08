import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthC extends GetxController {
  var isAuth = false.obs;

  Map<String, String> _dataUser = {
    'email': 'admin@gmail.com',
    'password': 'admin'
  };

  void login(String email, String pass, bool rememberme) {
    if (email != '' && pass != '') {
      if (GetUtils.isEmail((email))) {
        if (email == _dataUser['email'] && pass == _dataUser['password']) {
          if (rememberme) {
            //simpan cache storage
            final box = GetStorage();
            box.write('dataUser',
                {"email": email, "password": pass, "rememberme": rememberme});
          } else {
            // hapus Storage cache
            final box = GetStorage();
            if (box.read('dataUser') != null) {
              box.erase();
            }
          }
          //berhasil login
          isAuth.value = true;
          // Get.offAllNamed(RouteName.home);
        } else {
          dialogError("Data user tidak valid, Gunakan akun lainnya");
        }
      }
    } else {
      dialogError("Format Email Salah");
    }
  }

  void dialogError(String msg) {
    Get.defaultDialog(
      title: "Terjadi Kesalahan",
      middleText: msg,
    );
  }

  @override
  void onInit() async {
    super.onInit();
    await GetStorage.init();
  }

  Future<void> autoLogin() async {
    final box = GetStorage();
    if (box.read("dataUser") != null) {
      final data = box.read("_dataUser") as Map<String, dynamic>;
      login(data["email"], data["password"], data["rememberme"]);
    }
  }

  void logout(bool rememberme) {
    if (rememberme == false) {
      final box = GetStorage();
      if (box.read('dataUser') != null) {
        box.erase();
      }
    }
    isAuth.value = false;
  }
}
