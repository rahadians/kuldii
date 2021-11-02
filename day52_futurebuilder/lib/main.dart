import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Future<Map<String, dynamic>> ambilData() async {
    try {
      var hasilGet = await http.get(Uri.parse("https://reqres.in/api/users/2"));

      if (hasilGet.statusCode >= 200 && hasilGet.statusCode < 300) {
        var data = json.decode(hasilGet.body)["data"] as Map<String, dynamic>;
        print (data);
        return data;
      } else {
        throw (hasilGet.statusCode);
      }
    } catch (err) {
      rethrow;
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Future Builder"),
      ),
      body: FutureBuilder(
        future: ambilData(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.error != null) {
            return Text("${snapshot.error}");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text(
                    "${snapshot.data["first_name"]} ${snapshot.data["last_name"]}",
                    style: TextStyle(fontSize: 35),
                  ),
                ],
              ),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ambilData,
      ),
    );
  }
}

//snapshot itu ada 2 kondisi, ketika sebelum dapat data dan sudah dapat data
// 1. kondisi snapshot.ConnectionState.waiting
//2.  kondisi snapshot.ConnectionState.Done

//snapshot mempunya 3 property data, error, connectionstate
//data dari API diwakili oleh snapshot

