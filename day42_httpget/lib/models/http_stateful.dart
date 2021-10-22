import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpStateful {
  String id, fullname, email, avatar;

  HttpStateful({this.id,this.fullname, this.email, this.avatar});

  static Future<HttpStateful> connectAPI(String id) async {
    Uri url = Uri.parse("https://reqres.in/api/users/" + id);

    var hasilRespon = await http.get(url);

    var dataku = json.decode(hasilRespon.body)["data"];

    // print(dataku

    return HttpStateful(
      id: dataku["id"].toString(),
      fullname: dataku["first_name"] + " " + dataku["last_name"],
      avatar: dataku["avatar"],
      email: dataku["email"],

    );



  }

  // cara cek api
  // static Future<HttpStateful> connectAPI(String id) async{
  // static connectAPI(String id) async {
  //   Uri url = Uri.parse("https://reqres.in/api/users/" + id);
  //
  //   var hasilRespon = await http.get(url);
  //
  //   var data = json.decode(hasilRespon.body);
  //
  //   print(data["data"]["id"]);
  // }
}
