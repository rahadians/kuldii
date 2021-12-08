import '../counter/text_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextPage extends StatelessWidget {
  TextController textC=Get.put(TextController());
  TextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: Text("Text View"),),
      body: Center(
        child: TextField(
          controller: textC.myC,
        )
      )
    ,
    );
  }
}
