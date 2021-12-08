
import 'package:day86_getxtranslations/utils/translation.dart';

import '../pages/home_page.dart';
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
      translations: MyTranslation(),
      locale: Locale('id'),
      home: HomePage(),
    );
  }
}


