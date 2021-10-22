import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/player.dart';
import 'package:http/http.dart' as http;

class Players with ChangeNotifier {
  List<Player> _allPlayer = [];

  List<Player> get allPlayer => _allPlayer;

  int get jumlahPlayer => _allPlayer.length;

  Player selectById(String id) =>
      _allPlayer.firstWhere((element) => element.id == id);

  Future<void> addPlayer(String name, String position, String image) {
    DateTime datetimeNow = DateTime.now();

    Uri url = Uri.parse(
        "https://kuldii-http-req-default-rtdb.firebaseio.com/players.json"); //tambahkan file players.json

    return http
        .post(url,
            body: json.encode({
              "name": name,
              "position": position,
              "imageUrl": image,
              "createdAt": datetimeNow.toString(),
            }))
        .then((response) {
      print("the function");
      _allPlayer.add(
        Player(
          id: json.decode(response.body)["name"].toString(),
          name: name,
          position: position,
          imageUrl: image,
          // createdAt: datetimeNow,
        ),
      );

      notifyListeners();
    });
  }

  void editPlayer(String id, String name, String position, String image,
      BuildContext context) {
    Player selectPlayer = _allPlayer.firstWhere((element) => element.id == id);
    selectPlayer.name = name;
    selectPlayer.position = position;
    selectPlayer.imageUrl = image;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Berhasil diubah"),
        duration: Duration(seconds: 2),
      ),
    );
    notifyListeners();
  }

  Future<void> deletePlayer(String id) {
    Uri url = Uri.parse(
        "https://kuldii-http-req-default-rtdb.firebaseio.com/players/$id.json"); //tambahkan file players.json

    return http.delete(url).then((response) {
      _allPlayer.removeWhere((element) => element.id == id);
      notifyListeners();
    });
  }

  Future<void> initialData() async {
    Uri url = Uri.parse(
        "https://kuldii-http-req-default-rtdb.firebaseio.com/players.json"); //tambahkan file players.json

    await http.get(url).then((response) {
      var dataResponse = json.decode(response.body) as Map<String, dynamic>;

      dataResponse.forEach((key, value) {
        // DateTime dateTimeParse =        DateFormat.yMMMMd().parse(value["createAt"]);
        DateTime dateTimeParse =
            DateFormat("yyyy-mm-dd hh:mm:ss").parse(value["createdAt"]);

        _allPlayer.add(Player(
          id: key,
          createdAt: dateTimeParse,
          imageUrl: value["imageUrl"],
          name: value["name"],
          position: value["position"],
        ));
      });
      // print("Berhasil");
      notifyListeners();
    });
  }
}
