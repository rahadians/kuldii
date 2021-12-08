import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'snackbar_logic.dart';

class HomePage extends StatelessWidget {
  // final logic = Get.put(SnackbarLogic());
  // final state = Get.find<SnackbarLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("Dialog", "Ini Isi snackbar",
              duration: Duration(seconds: 4),
            backgroundColor: Colors.blueGrey,
            icon: Icon(Icons.warning_amber),
          );

        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(),
      body: Center(),
    );
  }
}
