import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpProvider with ChangeNotifier {
  Map<String, dynamic> _data = {}; // {} artinya data kosong

  Map<String, dynamic> get data =>
      _data; // pasang getter, harus di-get map yang diatas

  int get jumlahData => _data.length; //get data jumlah data dari _data

  void connectAPI(String name, String job) async {
    Uri url = Uri.parse("https://reqres.in/api/users/");
    var hasilResponse = await http.post(url, body: {
      "name": name,
      "job": job,
    });

    _data = json.decode(hasilResponse.body);
    notifyListeners();
  }
}
