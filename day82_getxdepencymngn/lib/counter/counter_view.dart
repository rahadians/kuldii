import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'counter_logic.dart';
import 'hitung_view.dart';

class HomePage extends StatelessWidget {


  // myController myC = Get.put(myController());
  // pertama definisikan mycontroller di sini

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: ()=>Get.to(HitungView()), icon: Icon(Icons.keyboard_arrow_right))
          ],
          title: Text("Hitung angka"),
        ),
        body: Center(
          child: Text(
              // "Angka ${myC.count}",
              "HOME PAGE",

              style: TextStyle(fontSize: 35),
            ),

        ),
        );
  }
}
