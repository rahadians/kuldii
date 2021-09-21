import './page_satu.dart';
import 'package:flutter/material.dart';

class Page_Dua extends StatelessWidget {
  const Page_Dua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pop(MaterialPageRoute(builder: (context){
              return Page_Satu();
            }));
          },
          child: Icon(Icons.close),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: Center(child: Text("Page Satu")),
      ),
    );
  }
}
