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
          Get.bottomSheet(
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network('https://picsum.photos/250?image=9'),
                SizedBox(height: 5,),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                )
              ],
            )



          );
        },),
      ),
    );
  }
}
