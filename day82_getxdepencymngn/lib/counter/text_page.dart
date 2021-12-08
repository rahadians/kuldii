import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'counter_logic.dart';


class TextPage extends StatelessWidget {
  final myC = Get.put(myController(),permanent: true,);
  // final clazy = Get.lazyPut(() => myController(),fenix: true);
  var c = Get.find<myController>();
  TextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Page")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: c.textC,
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
        ),
      ),
    );
  }
}
