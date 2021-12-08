import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_logic.dart';
import 'hitung_page.dart';

class HomePage extends StatelessWidget {
  // final logic = Get.put(CounterLogic());
  // final state = Get.find<CounterLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
title: Text("Home Page"),
      ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("HomePage"),
          OutlinedButton(onPressed: ()=>Get.to(()=>HitungPage()), child: Text("Next >>"))
        ],
      ),
    ),  
    );
    
  }
}

