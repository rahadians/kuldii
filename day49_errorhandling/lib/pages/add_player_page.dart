import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../providers/players.dart';

class AddPlayer extends StatelessWidget {
  static const routeName = "/add-player";
  final TextEditingController nameController = TextEditingController();
  final TextEditingController positionController = TextEditingController();
  final TextEditingController imageController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final players = Provider.of<Players>(context, listen: false);
    final Function addPlayer =(){
      players
          .addPlayer(
        nameController.text,
        positionController.text,
        imageController.text,
      )
          .then(
            (response) {
          print("Kembali ke Home & kasih notif snack bar");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Berhasil ditambahkan"),
              duration: Duration(seconds: 2),
            ),
          );
          Navigator.pop(context);
        },
      ).catchError((err)=>showDialog(context: context, builder: (context)=>AlertDialog(
        title: Text("Terjadi Error${err}"),
        content: Text("Tidak Dapat menambahkan player"),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("OK"))
        ],
      )));
    };
    return Scaffold(
      appBar: AppBar(
        title: Text("ADD PLAYER"),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: addPlayer,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                autocorrect: false,
                autofocus: true,
                decoration: InputDecoration(labelText: "Nama"),
                textInputAction: TextInputAction.next,
                controller: nameController,
              ),
              TextFormField(
                autocorrect: false,
                decoration: InputDecoration(labelText: "Posisi"),
                textInputAction: TextInputAction.next,
                controller: positionController,
              ),
              TextFormField(
                autocorrect: false,
                decoration: InputDecoration(labelText: "Image URL"),
                textInputAction: TextInputAction.done,
                controller: imageController,
                onEditingComplete: () {
                  players
                      .addPlayer(
                    nameController.text,
                    positionController.text,
                    imageController.text,
                  )
                      .then(
                        (response) {
                      print("Kembali ke Home & kasih notif snack bar");
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Berhasil ditambahkan"),
                          duration: Duration(seconds: 2),
                        ),
                      );
                      Navigator.pop(context);
                    },
                  );
                },
              ),
              SizedBox(height: 50),
              Container(
                width: double.infinity,
                alignment: Alignment.centerRight,
                child: OutlinedButton(
                  onPressed: addPlayer,
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
