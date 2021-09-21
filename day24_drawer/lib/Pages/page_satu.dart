import './page_dua.dart';
import 'package:flutter/material.dart';

class Page_Satu extends StatelessWidget {
  const Page_Satu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ini Page satu",style: TextStyle(fontSize: 34),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.keyboard_arrow_left),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/page_dua');
                  },
                  child: Icon(Icons.keyboard_arrow_right),
                ),
              ],
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop();
            }, child: Icon(Icons.close))


          ],
        ),
      ),
    );
  }
}
