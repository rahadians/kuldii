import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import 'dart:math';

class ProductItem extends StatefulWidget {
  ProductItem(Key key,this.prodId, this.title, this.date) : super(key: key);

  final String prodId, title;

  final DateTime date;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  Color? bgColor = Colors.white;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final List<Color> randomColor = [
      Colors.amber,
      Colors.black,
      Colors.red,
      Colors.green,
      Colors.brown,
      Colors.purple,
      Colors.pink,
      Colors.blue
    ];

    Random random = Random();
    bgColor = randomColor[random.nextInt(randomColor.length)];
  }

  @override
  Widget build(BuildContext context) {
    var products = Provider.of<Products>(context, listen: false);
    return ListTile(
      leading: CircleAvatar(
        // backgroundColor: Colors.red,
        backgroundColor: bgColor,
      ),
      title: Text(widget.title),
      subtitle: Text(DateFormat.yMMMEd().format(widget.date)),
      trailing: IconButton(
        onPressed: () => products.deleteProduct(widget.prodId),
        icon: Icon(
          Icons.delete,
          color: Colors.red,
        ),
      ),
    );
  }
}
