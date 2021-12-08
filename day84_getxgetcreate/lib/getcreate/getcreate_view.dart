import '../pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getcreate_logic.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Home Page"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Page"),
            SizedBox(height: 10),
            OutlinedButton(onPressed: ()=>Get.to(ShopPage()), child: Icon(Icons.arrow_right_alt))

          ],
        ),
      )
    );
  }
}

