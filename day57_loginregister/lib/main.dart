import '../pages/login_page.dart';
// import 'package:day57_loginregister/pages/login_screen.dart';

import '../providers/auth.dart';

import '../pages/auth_page.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/products.dart';

import './pages/add_product_page.dart';
import './pages/edit_product_page.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Auth()),
        ChangeNotifierProvider(create: (ctx) => Products()),
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login(),
        routes: {
          AddProductPage.route: (ctx) => AddProductPage(),
          EditProductPage.route: (ctx) => EditProductPage(),
        },
      ),
    );
  }
}
