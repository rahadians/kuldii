 import 'package:flutter/cupertino.dart';

class Product{
  @required String judul;
  @required String imageURL;
  @required int harga;
  @required String deskripsi;

  Product({required this.judul,required this.imageURL,this.harga=0,this.deskripsi=""});

}
