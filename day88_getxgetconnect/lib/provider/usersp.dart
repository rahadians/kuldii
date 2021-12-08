
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:day88_getxgetconnect/controllers/users_c.dart';

class UserProvider extends GetConnect {

  final url ="https://kuldii-getconnect-project-default-rtdb.asia-southeast1.firebasedatabase.app/";


  // Get request
  Future<Response> getUser(int id) => get('http://youapi/users/$id');


  // Post request atau simpan data ke database


//simpan database
  Future<Response> postData( String name,String email, String phone){

    final body = json.encode({

      "name" : name,
      "email" : email,
      "phone" : phone,
    }
    );

    return post(url+"users.json", body);
  }


//hapus data dari database

Future<Response> deleteData(String id){
    return delete(url+"users/$id.json");
}


//Edit Data
  Future<Response> editData(String id, String name,String email, String phone){

    final body = json.encode({
      "name" : name,
      "email" : email,
      "phone" : phone,
    }
    );
print(body);
print(url+"users/$id.json");
    return put(url+"users/$id.json", body);

  }

}

