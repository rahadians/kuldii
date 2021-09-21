import './page_satu.dart';
import 'package:flutter/material.dart';


class Page_Dua extends StatelessWidget {
  const Page_Dua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).pop();
      },child: Icon(Icons.close),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Ini Halaman Dua")
          ],
        ),
      ),
    );
  }
}
