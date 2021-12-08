import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){
              Get.updateLocale(Locale('id'));
            }, icon: Icon(Icons.emoji_flags)),
          ],
          title: Text(
            "Judul",
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Text("1"),
              SizedBox(
                height: 10,
              ),
              Text("2"),
            ],
          ),
        ));
  }
}
