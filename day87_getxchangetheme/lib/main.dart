import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){
          Get.changeTheme(Get.isDarkMode?ThemeData.light():ThemeData.dark());

        },),
        appBar: AppBar(),
      ),
    );
  }
}
