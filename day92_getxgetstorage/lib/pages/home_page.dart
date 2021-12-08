import 'package:day92_getxgetstorage/controller/login_controller.dart';

import '../controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final auth = Get.find<AuthC>();
    final login = Get.find<LoginC>();

    return Scaffold(
      appBar: AppBar(title: Text("Home Page"),),
    floatingActionButton: FloatingActionButton(onPressed: (){
      Get.find<AuthC>().logout(login.rememberme.value);
    },child: Icon(Icons.logout),),
    );
  }
}
