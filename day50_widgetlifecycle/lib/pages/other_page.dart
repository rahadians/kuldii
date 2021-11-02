

import '../pages/counter_page.dart';
import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget {
  static const routeName = "/other-page";
  const OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Other Page"),
      ),
      body: Center(
        child: OutlinedButton(onPressed: (){
          Navigator.pushReplacementNamed(context, CounterPage.routeName,
          arguments: ModalRoute.of(context)!.settings.arguments as int
          );
        }, child: Text("Go To Counter Page")),

      ),
    );
  }
}
