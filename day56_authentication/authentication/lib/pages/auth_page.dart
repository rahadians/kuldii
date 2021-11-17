import 'dart:async';
import 'dart:ffi';


import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import '../pages/home_page.dart';

const users = {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
};

class LoginPage extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 2250);



  Future<String> _authUser(LoginData data) {
    print("cetak $data.name");
    print('Name: ${data.name}, Password: ${data.password}');
    // ignore: void_checks
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
       return "error";
    });
  }

  Future<String> _recoverPassword(String name) {
    // ignore: void_checks
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return "null";
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Kuldii Project',
      // logo: 'assets/images/ecorp-lightblue.png',
      onLogin: _authUser,
      onSignup: _authUser,
      onSubmitAnimationCompleted: () {
        print ("ke sini");
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomePage(),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}