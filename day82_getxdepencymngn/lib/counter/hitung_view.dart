import '../counter/text_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_logic.dart';


class HitungView extends StatelessWidget {
  final myC = Get.put(myController(),permanent: true,);
  // pertama definisikan mycontroller di sini

  HitungView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final angka = Get.find<myController>();

    return Scaffold(

        appBar: AppBar(
          actions: [
            IconButton(onPressed: ()=>Get.to(TextPage()), icon: Icon(Icons.keyboard_arrow_right))
          ],
          title: Text("Hitung angka"),
        ),
        body: Center(
          child: GetBuilder<myController>(
            builder: (_) => Text(
              "angka ${angka.count}",
              style: TextStyle(fontSize: 35),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          myC.tambah();
        }));
  }
}
