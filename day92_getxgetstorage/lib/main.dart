import 'package:day92_getxgetstorage/bindings/bindings.dart';
import 'package:day92_getxgetstorage/controller/login_controller.dart';

import '../bindings/binding_login.dart';
import '../pages/login.dart';
import '../routes/app_page.dart';

import '../pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/auth_controller.dart';
// import 'package:get_storage/get_storage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authC = Get.put(AuthC());

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: authC.autoLogin() ,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Obx(() => GetMaterialApp(
                initialBinding: BindingLogin(),
                home: authC.isAuth.isTrue ? HomePage() : LoginPage(),
                getPages: AppPage.pages,
              ));
        }
        return GetMaterialApp(
          home: Scaffold(
              body: Center(
            child: CircularProgressIndicator(),
          )),
        );
      },
    );
  }
}
