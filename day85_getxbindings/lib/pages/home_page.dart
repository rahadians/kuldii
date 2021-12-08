import 'package:day85_getxbindings/routes/route_name.dart';

import '../controller/count_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'count_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.toNamed(RouteName.count),
          child: Text("Next >>"),
        ),
      ),
    );
  }
}

// child: ElevatedButton(
//   // onPressed: ()=>Get.to(CountPage(),
//   // binding: BindingsBuilder(()=>Get.put(CountController()))
//   onPressed: ()=>Get.to(CountPage()), child: null,
//   ),
//   child: Text("Next >>"),
