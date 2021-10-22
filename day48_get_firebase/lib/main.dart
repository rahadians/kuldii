import 'package:flutter/material.dart';
import 'package:myproject/pages/home_page_steteless.dart';
import 'package:provider/provider.dart';

import '../providers/player.dart';
import './pages/detail_player_page.dart';
import './pages/add_player_page.dart';
// import './pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Players(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: HomePage(),
        home: Home_Page_State(),
        routes: {
          AddPlayer.routeName: (context) => AddPlayer(),
          DetailPlayer.routeName: (context) => DetailPlayer(),
        },
      ),
    );
  }
}
