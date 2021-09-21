import '../Pages/page_dua.dart';
import '../Pages/page_satu.dart';
import 'package:flutter/material.dart';
import './main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home_page',
      routes: {
        '/home_page' : (context)=> Main_Page(),
        '/page_satu' :  (context)=> Page_Satu(),
        '/page_dua' : (context)=> Page_Dua(),
      } ,
      // home: Main_Page()
    );
  }
}
