import 'dart:math';

import '../model/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class Home_Page extends StatefulWidget {
  Faker faker = Faker();

  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  List<Product> dummyData = List.generate(100, (index) {
    return Product(
        judul: faker.person.name(),
        imageURL: "https://picsum.photos/id/$index/300/100",
        deskripsi: faker.lorem.sentence(),
        harga: 100000 + Random().nextInt(1000000));
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Product"),
        ),
        body: GridView.builder(
          itemCount: dummyData.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 1, crossAxisSpacing: 1),
          //jumlah grid ke samping
          itemBuilder: (context, index) {
            //itembuilder harus pakai parameter context,index
            return GridTile(
                child: Image.network(dummyData[index].imageURL),
                footer: Column(
                  children: [
                    Text(dummyData[index].judul),
                    Text(dummyData[index].harga.toString()),
                  ],
                ));
          },
          //function menjalankan apa
        ));
  }
}
