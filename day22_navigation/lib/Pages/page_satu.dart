import 'package:day22_navigation/Pages/page_dua.dart';
import 'package:flutter/material.dart';

class Page_Satu extends StatelessWidget {
  const Page_Satu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Ini halaman satu"),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.keyboard_arrow_left)),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Page_Dua();
                      }));
                    },
                    child: Icon(Icons.keyboard_arrow_right))
              ],
            )
          ],
        ),
      ),
    );
  }
}
