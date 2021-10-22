import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class HttpProvider with ChangeNotifier {
  Map<String, dynamic> _data = {};

  Map<String, dynamic> get data => _data;

  int get jumlahData => _data.length;

  Uri url;

  void connectAPI(String id, BuildContext context) async {
    url = Uri.parse("https://reqres.in/api/users/" + id);

    var hasilResponse = await http.get(url);
    if (hasilResponse.statusCode == 200) {
      _data = (json.decode(hasilResponse.body))["data"];
      notifyListeners();
      HandlingStatusCode(context,"Berhasil Ambil Data");
    } else {
      HandlingStatusCode(context,"Gagal Ambil Data");
    }
  }

  void deleteData(BuildContext context) async {
    var hasilResponse = await http.delete(url);

    if (hasilResponse.statusCode == 204) {
      _data={}; //menghapus data
      notifyListeners();
      HandlingStatusCode(context, "No Content ${hasilResponse.statusCode}");
    }
  }

  HandlingStatusCode(BuildContext context,String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: Duration(milliseconds: 1300),
    ));
  }
}
