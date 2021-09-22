import 'package:flutter/services.dart';

import '../pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  // ini untuk posisi hp hanya untuk portrait atau landscape saja


  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitDown,
  //   DeviceOrientation.portraitDown,
  // ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/home_page',
      // routes: {
      //   '/home_page' : (context)=>HomePages(),
      //
      // },
      home: HomePages(),
    );
  }
}
